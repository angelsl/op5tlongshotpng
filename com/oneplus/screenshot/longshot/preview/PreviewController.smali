.class public Lcom/oneplus/screenshot/longshot/preview/PreviewController;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;
    }
.end annotation


# static fields
.field private static final MSG_BG_CREATE_PREVIEW:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Longshot.PreviewController"


# instance fields
.field private isPreviewStop:Z

.field private isStarted:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

.field private mCurrentBitmapCacheIndex:I

.field private mCurrentpage:I

.field private mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

.field private mMoveDistance:I

.field private mPageHeight:I

.field private mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

.field private mRedyToPreviewCacheCount:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Landroid/content/Context;)V
    .locals 3
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mRedyToPreviewCacheCount:I

    .line 24
    const/16 v0, 0x258

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPageHeight:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentpage:I

    .line 29
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    .line 30
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    .line 31
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    .line 33
    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    .line 160
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mMoveDistance:I

    .line 51
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 52
    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {v0, p2, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 53
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewController;
    .param p1, "x1"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->addBitmap(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewController;
    .param p1, "x1"    # Z

    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapFinish(Z)V

    return-void
.end method

.method private addBitmap(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 11
    .param p1, "bitmapCache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "isTop"    # Z
    .param p3, "isLast"    # Z

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, "log":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 127
    .local v1, "key":I
    const/4 v2, 0x0

    .line 129
    .local v2, "index":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 130
    .local v3, "startTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add bitmapCache index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, " w:"

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 134
    .local v5, "topbitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v2

    .line 135
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v8, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    .line 136
    const-string v8, " with top h:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 138
    .end local v5    # "topbitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 140
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 141
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v8, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    .line 142
    const-string v8, " with bitmap h:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_2

    .line 145
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 146
    .local v5, "bottomBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v7

    add-int/lit8 v2, v7, 0x2

    .line 147
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v7, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    .line 148
    const-string v7, " with bottom h:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 150
    .end local v5    # "bottomBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Longshot.PreviewController"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 152
    .local v7, "endTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addBitmap time:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v3

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method private updateBitmapFinish(Z)V
    .locals 1
    .param p1, "isLast"    # Z

    .line 156
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateFinish(Z)V

    .line 157
    return-void
.end method

.method private updateNextBitmapCache()V
    .locals 9

    .line 91
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    .line 92
    .local v0, "caches":Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 93
    iget v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    if-gt v2, v1, :cond_1

    .line 94
    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 95
    .local v2, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 96
    .local v4, "isFirst":Z
    :goto_1
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache()Z

    move-result v5

    .line 97
    .local v5, "isLast":Z
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isStithComplete()Z

    move-result v6

    .line 98
    .local v6, "isStitched":Z
    invoke-virtual {v2, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setIndex(I)V

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " updateNextBitmapCache JoinCache size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentBitmapCacheIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isFirst:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isLastCache:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isStitched:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    const-string v8, "Longshot.PreviewController"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, v2, v4, v5}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updatePreview(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V

    .line 103
    if-eqz v6, :cond_2

    .line 104
    iget v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    .line 92
    .end local v2    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local v4    # "isFirst":Z
    .end local v5    # "isLast":Z
    .end local v6    # "isStitched":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "index":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    .line 196
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    .line 197
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;->onPreviewComplete()V

    .line 200
    :cond_0
    return-void
.end method

.method public getCurrentBitmapCacheIndex()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    return v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "height"    # I

    .line 240
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewLength()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v0

    return v0
.end method

.method public isPreviewComplete()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    return v0
.end method

.method public onBackgroundScrollcomplete()V
    .locals 2

    .line 188
    const-string v0, "Longshot.PreviewController"

    const-string v1, " onBackgroundScrollcomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onBackgroundScrollcomplete()V

    .line 190
    return-void
.end method

.method public onScrollChanged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 170
    return-void
.end method

.method public onScrollcomplete()V
    .locals 1

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    .line 180
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;->onPreviewComplete()V

    .line 183
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStart isStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.PreviewController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    const-string v0, " onStart:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    .line 61
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onStart()V

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setFirstBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStop isStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.PreviewController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    .line 70
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onStop()V

    .line 72
    :cond_0
    const-string v0, " onStop:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public removeCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    .line 204
    return-void
.end method

.method public requestNextBitmapCache()V
    .locals 0

    .line 175
    return-void
.end method

.method public setNavibar(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 222
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setNavibarView(Landroid/graphics/Bitmap;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setStatusbar(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 216
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setStatusbrView(Landroid/graphics/Bitmap;)V

    .line 219
    :cond_0
    return-void
.end method

.method public updateBitmapCache()V
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    if-nez v0, :cond_1

    .line 77
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 79
    .local v0, "firstCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPageHeight:I

    .line 83
    .end local v0    # "firstCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateNextBitmapCache()V

    .line 87
    :cond_1
    return-void
.end method

.method public updatePreview(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 2
    .param p1, "bitmapCache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "isTop"    # Z
    .param p3, "isLast"    # Z

    .line 117
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 120
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 121
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method
