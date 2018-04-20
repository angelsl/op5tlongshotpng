.class public Lcom/oneplus/screenshot/longshot/match/UndoMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "UndoMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method private getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 13
    .param p1, "max"    # I
    .param p2, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 90
    .local v4, "w":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 91
    .local v6, "h":I
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 92
    .local v8, "size":I
    new-array v7, v8, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 93
    .local v7, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v8, :cond_1e

    .line 94
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v5, 0x1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v7, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 96
    :cond_1e
    if-eqz p2, :cond_24

    .line 97
    array-length v0, v7

    invoke-virtual {p2, v7, v2, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 99
    :cond_24
    return-object v7
.end method

.method private getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 13
    .param p1, "max"    # I
    .param p2, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 76
    .local v4, "w":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 77
    .local v6, "h":I
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 78
    .local v8, "size":I
    new-array v7, v8, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 79
    .local v7, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v8, :cond_1e

    .line 80
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v5, 0x1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v7, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 82
    :cond_1e
    if-eqz p2, :cond_24

    .line 83
    array-length v0, v7

    invoke-virtual {p2, v7, v2, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    .line 85
    :cond_24
    return-object v7
.end method


# virtual methods
.method protected canDump()Z
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 34
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 35
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 36
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 37
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string/jumbo v0, "Undo"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .registers 15
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 47
    .local v10, "offset":I
    :goto_e
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    .line 48
    .local v4, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v5

    .line 49
    .local v5, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v3, 0x0

    .line 50
    .local v3, "pos":I
    const/4 v1, 0x0

    .line 51
    .local v1, "matched":I
    const/4 v11, 0x0

    .line 52
    .local v11, "same":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_34
    array-length v2, v5

    array-length v6, v4

    sub-int/2addr v2, v6

    if-ge v8, v2, :cond_40

    .line 53
    if-eqz v11, :cond_54

    .line 54
    array-length v1, v4

    .line 55
    add-int v2, v8, v1

    add-int/lit8 v3, v2, -0x1

    .line 66
    :cond_40
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-direct {v0, v2, v6}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 67
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    add-int/lit8 v2, v1, -0x1

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 68
    return-object v0

    .line 46
    .end local v0    # "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    .end local v1    # "matched":I
    .end local v3    # "pos":I
    .end local v4    # "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v5    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v8    # "i":I
    .end local v10    # "offset":I
    .end local v11    # "same":Z
    :cond_52
    const/4 v10, 0x0

    .restart local v10    # "offset":I
    goto :goto_e

    .line 58
    .restart local v1    # "matched":I
    .restart local v3    # "pos":I
    .restart local v4    # "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .restart local v5    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .restart local v8    # "i":I
    .restart local v11    # "same":Z
    :cond_54
    const/4 v11, 0x1

    .line 59
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_56
    array-length v2, v4

    if-ge v9, v2, :cond_66

    .line 60
    aget-object v2, v4, v9

    add-int v6, v9, v8

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 61
    const/4 v11, 0x0

    .line 52
    :cond_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 59
    :cond_69
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_56
.end method
