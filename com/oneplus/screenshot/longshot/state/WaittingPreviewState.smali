.class public Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "WaittingPreviewState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.WaittingPreviewState"


# instance fields
.field private mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

.field private mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 24
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 25
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getPreviewController()Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    .line 26
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 27
    return-void
.end method

.method private cutBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cutsize"    # I

    .line 129
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 133
    .local v0, "imageHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 134
    .local v1, "width":I
    if-gtz v0, :cond_1

    .line 135
    return-object p1

    .line 138
    :cond_1
    sub-int v2, v0, p2

    .line 139
    .local v2, "cutHight":I
    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 140
    .local v3, "reset":Landroid/graphics/Bitmap;
    return-object v3

    .line 130
    .end local v0    # "imageHeight":I
    .end local v1    # "width":I
    .end local v2    # "cutHight":I
    .end local v3    # "reset":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-object p1
.end method

.method private updateLastCache()V
    .locals 13

    .line 54
    const-string v0, "Longshot.WaittingPreviewState"

    const-string v1, "checkPage start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "screenshotLength":I
    const/4 v1, 0x0

    .line 57
    .local v1, "lastItemIndex":I
    const/4 v2, 0x0

    .line 58
    .local v2, "cutSize":I
    const/4 v3, 0x0

    .line 59
    .local v3, "cutBottom":Z
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->getPreviewLength()I

    move-result v4

    .line 60
    .local v4, "previewLength":I
    const/4 v5, 0x0

    .line 61
    .local v5, "needToCutLastBitmap":Z
    const/4 v6, 0x0

    .line 63
    .local v6, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v8}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 64
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v8}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 65
    if-nez v7, :cond_0

    .line 66
    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    .line 68
    :cond_0
    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    .line 69
    if-lt v0, v4, :cond_1

    .line 70
    sub-int v2, v0, v4

    .line 71
    move v1, v7

    .line 72
    const/4 v5, 0x1

    .line 73
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 77
    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    .line 80
    :cond_2
    if-lt v0, v4, :cond_3

    .line 81
    sub-int v2, v0, v4

    .line 82
    move v1, v7

    .line 83
    const/4 v3, 0x1

    .line 84
    const/4 v5, 0x1

    .line 85
    goto :goto_1

    .line 63
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 89
    .end local v7    # "i":I
    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    .line 92
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v7}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "i":I
    :goto_2
    if-le v7, v1, :cond_5

    .line 93
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v8}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    .line 92
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 96
    .end local v7    # "i":I
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPage cache size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v8}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lastItemIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " screenshotLength:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " previewLength:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cutSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Longshot.WaittingPreviewState"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-lez v2, :cond_7

    .line 102
    const/4 v7, 0x0

    .line 103
    .local v7, "bitmapCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v8}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :try_start_1
    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v9}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v9

    .line 108
    goto :goto_3

    .line 109
    :catchall_0
    move-exception v9

    goto :goto_5

    .line 106
    :catch_0
    move-exception v9

    .line 107
    .local v9, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    invoke-virtual {v9}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 109
    .end local v9    # "e":Ljava/util/NoSuchElementException;
    :goto_3
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    const/4 v8, 0x0

    if-nez v3, :cond_6

    .line 112
    :try_start_3
    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {p0, v9, v2}, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->cutBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 113
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v10}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v10

    new-instance v11, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v11, v9, v8, v8}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v11}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 114
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 115
    :cond_6
    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {p0, v9, v2}, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->cutBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 116
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v10}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v10

    new-instance v11, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12, v8, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v11}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 118
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    .end local v7    # "bitmapCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    goto :goto_6

    .line 109
    .restart local v7    # "bitmapCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :goto_5
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "screenshotLength":I
    .end local v1    # "lastItemIndex":I
    .end local v2    # "cutSize":I
    .end local v3    # "cutBottom":Z
    .end local v4    # "previewLength":I
    .end local v5    # "needToCutLastBitmap":Z
    .end local v6    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .end local p0    # "this":Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;
    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 119
    .end local v7    # "bitmapCache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local v0    # "screenshotLength":I
    .restart local v1    # "lastItemIndex":I
    .restart local v2    # "cutSize":I
    .restart local v3    # "cutBottom":Z
    .restart local v4    # "previewLength":I
    .restart local v5    # "needToCutLastBitmap":Z
    .restart local v6    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .restart local p0    # "this":Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;
    :catch_1
    move-exception v7

    .line 120
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_6
    const-string v7, "Longshot.WaittingPreviewState"

    const-string v8, "checkPage end"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 2
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 34
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/BaseState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 35
    const-string v0, "Longshot.WaittingPreviewState"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->addCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V

    .line 37
    return-void
.end method

.method public onPreviewComplete()V
    .locals 4

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s onPreviewComplete Configs.isLongshotRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isPreviewComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.WaittingPreviewState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->updateLastCache()V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isPreviewStop:Z

    .line 46
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 49
    :cond_0
    const-string v0, "e onPreviewComplete:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
