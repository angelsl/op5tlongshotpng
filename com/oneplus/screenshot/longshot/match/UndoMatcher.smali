.class public Lcom/oneplus/screenshot/longshot/match/UndoMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "UndoMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method private getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 12
    .param p1, "max"    # I
    .param p2, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 90
    .local v6, "w":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 91
    .local v7, "h":I
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 92
    .local v8, "size":I
    new-array v9, v8, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 93
    .local v9, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 94
    new-instance v11, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, v11

    move-object v1, p3

    move v3, v10

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v11, v9, v10

    .line 93
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 96
    .end local v10    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 97
    const/4 v0, 0x0

    array-length v1, v9

    invoke-virtual {p2, v9, v0, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 99
    :cond_1
    return-object v9
.end method

.method private getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 12
    .param p1, "max"    # I
    .param p2, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 76
    .local v6, "w":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 77
    .local v7, "h":I
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 78
    .local v8, "size":I
    new-array v9, v8, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 79
    .local v9, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 80
    new-instance v11, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, v11

    move-object v1, p3

    move v3, v10

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v11, v9, v10

    .line 79
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 82
    .end local v10    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 83
    const/4 v0, 0x0

    array-length v1, v9

    invoke-virtual {p2, v9, v0, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 85
    :cond_1
    return-object v9
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 6

    .line 34
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 35
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 36
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 37
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "Undo"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 16
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 46
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, "offset":I
    :goto_0
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v2

    .line 48
    .local v2, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v3

    .line 49
    .local v3, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v4, 0x0

    .line 50
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 51
    .local v5, "matched":I
    const/4 v6, 0x0

    .line 52
    .local v6, "same":Z
    const/4 v7, 0x0

    move v13, v6

    .end local v6    # "same":Z
    .local v7, "i":I
    .local v13, "same":Z
    :goto_1
    array-length v6, v3

    array-length v8, v2

    sub-int/2addr v6, v8

    if-ge v7, v6, :cond_4

    .line 53
    if-eqz v13, :cond_1

    .line 54
    array-length v5, v2

    .line 55
    add-int v6, v7, v5

    add-int/lit8 v6, v6, -0x1

    .line 56
    .end local v4    # "pos":I
    .local v6, "pos":I
    move v4, v5

    move v14, v6

    goto :goto_4

    .line 58
    .end local v6    # "pos":I
    .restart local v4    # "pos":I
    :cond_1
    const/4 v6, 0x1

    .line 59
    .end local v13    # "same":Z
    .local v6, "same":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    array-length v9, v2

    if-ge v8, v9, :cond_3

    .line 60
    aget-object v9, v2, v8

    add-int v10, v8, v7

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 61
    const/4 v6, 0x0

    .line 62
    move v13, v6

    goto :goto_3

    .line 59
    :cond_2
    sget-object v9, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_2

    :cond_3
    move v13, v6

    .line 52
    .end local v6    # "same":Z
    .end local v8    # "j":I
    .restart local v13    # "same":Z
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v14, v4

    move v4, v5

    .line 66
    .end local v5    # "matched":I
    .end local v7    # "i":I
    .local v4, "matched":I
    .local v14, "pos":I
    :goto_4
    new-instance v5, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v6, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-direct {v5, v6, v7}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    move-object v15, v5

    .line 67
    .local v15, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    add-int/lit8 v7, v4, -0x1

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move v6, v4

    move v8, v14

    move-object v9, v2

    move-object v10, v3

    invoke-virtual/range {v5 .. v12}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 68
    return-object v15
.end method
