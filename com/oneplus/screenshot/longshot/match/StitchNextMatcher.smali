.class public Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchNextMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextMatcher"


# instance fields
.field protected mExtendCurr:I

.field protected mExtendLast:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    .line 25
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    .line 32
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_NEXT:I

    packed-switch v0, :pswitch_data_52

    .line 45
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_31

    .line 35
    :pswitch_16
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 36
    goto :goto_31

    .line 38
    :pswitch_1f
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 39
    goto :goto_31

    .line 42
    :pswitch_28
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    .line 43
    nop

    .line 48
    :goto_31
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    .line 49
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    .line 50
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    .line 51
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    .line 52
    return-void-no-barrier

    :pswitch_data_52
    .packed-switch 0x2
        :pswitch_28
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method

.method private getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 22
    .param p1, "step"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p6, "isCurr"    # Z

    move-object v0, p0

    .line 159
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 160
    .local v1, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 161
    .local v2, "h":I
    move/from16 v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 162
    .end local p3    # "size":I
    .local v3, "size":I
    new-array v4, v3, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 163
    .local v4, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_13
    if-ge v6, v3, :cond_42

    .line 164
    iget v7, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v7, v6

    add-int v7, v7, p1

    .line 165
    .local v7, "y":I
    if-eqz p6, :cond_1f

    .line 166
    add-int v7, v7, p2

    goto :goto_27

    .line 168
    :cond_1f
    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v8, v3

    sub-int v8, v2, v8

    sub-int v8, v8, p2

    add-int/2addr v7, v8

    .line 171
    :goto_27
    new-instance v14, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    add-int v10, v5, v8

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    sub-int v8, v1, v8

    iget v9, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mRightSideOffset:I

    sub-int v12, v8, v9

    const/4 v13, 0x1

    move-object v8, v14

    move-object/from16 v9, p4

    move v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v14, v4, v6

    .line 163
    .end local v7    # "y":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 178
    .end local v6    # "i":I
    :cond_42
    return-object v4
.end method


# virtual methods
.method protected canDump()Z
    .registers 2

    .line 71
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTraceNext()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .registers 6

    .line 64
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 65
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 66
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 67
    return-void-no-barrier
.end method

.method protected getStep()I
    .registers 3

    .line 76
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_NEXT:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 80
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 78
    :cond_c
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .line 59
    const-string v0, "StitchNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .registers 32
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    move-object/from16 v7, p0

    .line 87
    const-string v0, "StitchNextMatcher.match"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v8, v0, v1

    .line 89
    .local v8, "sizeLast":I
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v9, v0, v1

    .line 90
    .local v9, "sizeCurr":I
    const/4 v10, 0x0

    .line 91
    .local v10, "offset":I
    const/4 v11, 0x0

    .line 92
    .local v11, "matched":I
    const/4 v12, 0x0

    .line 93
    .local v12, "posLast":I
    const/4 v13, 0x0

    .line 94
    .local v13, "posCurr":I
    const/4 v14, 0x0

    .line 95
    .local v14, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    .line 96
    .local v15, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_55

    .line 97
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_current"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 99
    :cond_55
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_64

    .line 100
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_last"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 102
    :cond_64
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "k":I
    :goto_68
    move v6, v0

    .end local v0    # "k":I
    .local v6, "k":I
    iget v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    if-ge v6, v0, :cond_105

    .line 103
    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/16 v17, 0x0

    move-object v0, v7

    move v1, v6

    move v3, v8

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v6    # "k":I
    .local v18, "k":I
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    .line 104
    .local v0, "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move/from16 v1, v16

    .local v1, "j":I
    :goto_84
    array-length v2, v0

    if-ge v1, v2, :cond_101

    .line 105
    aget-object v2, v0, v1

    aget-object v3, v15, v16

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "match":I
    const/4 v3, 0x0

    .line 108
    .local v3, "totoal":I
    move v4, v2

    move/from16 v2, v16

    .local v2, "l":I
    .local v4, "match":I
    :goto_96
    add-int v5, v1, v2

    array-length v6, v0

    if-ge v5, v6, :cond_b1

    array-length v5, v15

    if-ge v2, v5, :cond_b1

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    add-int v5, v1, v2

    aget-object v5, v0, v5

    aget-object v6, v15, v2

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 117
    .end local v2    # "l":I
    :cond_b1
    div-int v2, v4, v3

    const/4 v5, 0x1

    if-ge v2, v5, :cond_b7

    .end local v3    # "totoal":I
    .end local v4    # "match":I
    goto :goto_fe

    .line 119
    .restart local v3    # "totoal":I
    .restart local v4    # "match":I
    :cond_b7
    if-ge v11, v4, :cond_fe

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "compC":I
    array-length v6, v0

    sub-int/2addr v6, v4

    .line 123
    .local v6, "compL":I
    const/16 v17, 0x1

    .line 124
    .local v17, "same":Z
    move/from16 v19, v16

    .local v19, "i":I
    :goto_c0
    move/from16 v25, v19

    .end local v19    # "i":I
    .local v25, "i":I
    move/from16 v26, v3

    move/from16 v5, v25

    add-int v3, v2, v5

    .end local v3    # "totoal":I
    .end local v25    # "i":I
    .local v5, "i":I
    .local v26, "totoal":I
    move/from16 v27, v2

    array-length v2, v15

    .end local v2    # "compC":I
    .local v27, "compC":I
    if-ge v3, v2, :cond_f0

    add-int v2, v6, v5

    array-length v3, v0

    if-ge v2, v3, :cond_f0

    if-ge v5, v4, :cond_f0

    .line 125
    add-int v25, v6, v5

    aget-object v2, v0, v25

    aget-object v3, v15, v5

    move/from16 v28, v6

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v2

    .end local v6    # "compL":I
    .local v28, "compL":I
    if-nez v2, :cond_e6

    .line 126
    const/16 v17, 0x0

    .line 127
    goto :goto_f2

    .line 124
    :cond_e6
    add-int/lit8 v19, v5, 0x1

    .end local v5    # "i":I
    .restart local v19    # "i":I
    move/from16 v3, v26

    move/from16 v2, v27

    move/from16 v6, v28

    const/4 v5, 0x1

    goto :goto_c0

    .line 131
    .end local v19    # "i":I
    .end local v28    # "compL":I
    .restart local v6    # "compL":I
    :cond_f0
    move/from16 v28, v6

    .end local v6    # "compL":I
    .restart local v28    # "compL":I
    :goto_f2
    if-eqz v17, :cond_fe

    .line 132
    move v11, v4

    .line 133
    array-length v2, v0

    const/4 v3, 0x1

    add-int/lit8 v12, v2, -0x1

    .line 134
    add-int/lit8 v13, v11, -0x1

    .line 135
    move-object v14, v0

    .line 136
    move/from16 v10, v18

    .line 104
    .end local v4    # "match":I
    .end local v17    # "same":Z
    .end local v26    # "totoal":I
    .end local v27    # "compC":I
    .end local v28    # "compL":I
    :cond_fe
    :goto_fe
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 102
    .end local v0    # "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .end local v1    # "j":I
    :cond_101
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "k":I
    .local v0, "k":I
    goto/16 :goto_68

    .line 143
    .end local v0    # "k":I
    :cond_105
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 145
    .local v0, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    const-string v1, "Longshot.StitchNextMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StitchNextMatcher run posCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " posLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sizeLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sizeCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mExtendLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mExtendCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lineCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 149
    const-string v1, "StitchNextMatcher.data.init"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 150
    const/16 v21, 0x1

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    iget-object v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object v3, v15

    move-object v15, v0

    .end local v15    # "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .local v3, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move/from16 v22, v1

    move/from16 v23, v10

    move-object/from16 v24, v2

    invoke-virtual/range {v15 .. v24}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 151
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    return-object v0
.end method
