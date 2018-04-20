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

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 24
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

    .line 48
    :goto_15
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
    return-void

    .line 35
    :pswitch_36
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_15

    .line 38
    :pswitch_3f
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_15

    .line 42
    :pswitch_48
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_15

    .line 32
    nop

    :pswitch_data_52
    .packed-switch 0x2
        :pswitch_48
        :pswitch_3f
        :pswitch_36
    .end packed-switch
.end method

.method private getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 17
    .param p1, "step"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "dumper"    # Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
    .param p6, "isCurr"    # Z

    .prologue
    .line 159
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 160
    .local v9, "w":I
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 161
    .local v6, "h":I
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 162
    new-array v8, p3, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 163
    .local v8, "lines":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f
    if-ge v7, p3, :cond_39

    .line 164
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v0, v7

    add-int v3, v0, p1

    .line 165
    .local v3, "y":I
    if-eqz p6, :cond_31

    .line 166
    add-int/2addr v3, p2

    .line 171
    :goto_19
    new-instance v0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    add-int/lit8 v2, v1, 0x0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    sub-int v1, v9, v1

    iget v4, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mRightSideOffset:I

    sub-int v4, v1, v4

    const/4 v5, 0x1

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v0, v8, v7

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 168
    :cond_31
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v0, p3

    sub-int v0, v6, v0

    sub-int/2addr v0, p2

    add-int/2addr v3, v0

    goto :goto_19

    .line 178
    .end local v3    # "y":I
    :cond_39
    return-object v8
.end method


# virtual methods
.method protected canDump()Z
    .registers 2

    .prologue
    .line 71
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTraceNext()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .registers 7

    .prologue
    const/4 v5, 0x1

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

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 66
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 67
    return-void
.end method

.method protected getStep()I
    .registers 2

    .prologue
    .line 76
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_NEXT:I

    packed-switch v0, :pswitch_data_14

    .line 80
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 78
    :pswitch_c
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 76
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const-string/jumbo v0, "StitchNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .registers 34
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .prologue
    .line 87
    const-string/jumbo v2, "StitchNextMatcher.match"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v9, v2, v3

    .line 89
    .local v9, "sizeLast":I
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v5, v2, v3

    .line 90
    .local v5, "sizeCurr":I
    const/16 v18, 0x0

    .line 91
    .local v18, "offset":I
    const/16 v26, 0x0

    .line 92
    .local v26, "matched":I
    const/16 v28, 0x0

    .line 93
    .local v28, "posLast":I
    const/4 v13, 0x0

    .line 94
    .local v13, "posCurr":I
    const/4 v14, 0x0

    .line 95
    .local v14, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    .line 96
    .local v15, "lineCurr":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v2, :cond_6c

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const-string/jumbo v4, "getNext_current"

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 99
    :cond_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v2, :cond_80

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const-string/jumbo v4, "getNext_last"

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 102
    :cond_80
    const/4 v7, 0x0

    .end local v14    # "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .local v7, "k":I
    :goto_81
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    if-ge v7, v2, :cond_124

    .line 103
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v27

    .line 104
    .local v27, "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_9c
    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_120

    .line 105
    aget-object v2, v27, v23

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 106
    const/16 v25, 0x0

    .line 107
    .local v25, "match":I
    const/16 v30, 0x0

    .line 108
    .local v30, "totoal":I
    const/16 v24, 0x0

    .local v24, "l":I
    :goto_b4
    add-int v2, v23, v24

    move-object/from16 v0, v27

    array-length v3, v0

    if-ge v2, v3, :cond_d3

    array-length v2, v15

    move/from16 v0, v24

    if-ge v0, v2, :cond_d3

    .line 109
    add-int/lit8 v30, v30, 0x1

    .line 110
    add-int v2, v23, v24

    aget-object v2, v27, v2

    aget-object v3, v15, v24

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 111
    add-int/lit8 v25, v25, 0x1

    .line 108
    add-int/lit8 v24, v24, 0x1

    goto :goto_b4

    .line 117
    :cond_d3
    div-int v2, v25, v30

    const/4 v3, 0x1

    if-ge v2, v3, :cond_db

    .line 104
    .end local v24    # "l":I
    .end local v25    # "match":I
    .end local v30    # "totoal":I
    :cond_d8
    :goto_d8
    add-int/lit8 v23, v23, 0x1

    goto :goto_9c

    .line 119
    .restart local v24    # "l":I
    .restart local v25    # "match":I
    .restart local v30    # "totoal":I
    :cond_db
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_d8

    .line 121
    const/16 v20, 0x0

    .line 122
    .local v20, "compC":I
    move-object/from16 v0, v27

    array-length v2, v0

    sub-int v21, v2, v25

    .line 123
    .local v21, "compL":I
    const/16 v29, 0x1

    .line 124
    .local v29, "same":Z
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_ec
    add-int/lit8 v2, v22, 0x0

    array-length v3, v15

    if-ge v2, v3, :cond_10d

    add-int v2, v21, v22

    move-object/from16 v0, v27

    array-length v3, v0

    if-ge v2, v3, :cond_10d

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_10d

    .line 125
    add-int v2, v21, v22

    aget-object v2, v27, v2

    aget-object v3, v15, v22

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_11d

    .line 126
    const/16 v29, 0x0

    .line 131
    :cond_10d
    if-eqz v29, :cond_d8

    .line 132
    move/from16 v26, v25

    .line 133
    move-object/from16 v0, v27

    array-length v2, v0

    add-int/lit8 v28, v2, -0x1

    .line 134
    add-int/lit8 v13, v26, -0x1

    .line 135
    move-object/from16 v14, v27

    .line 136
    .local v14, "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    move/from16 v18, v7

    goto :goto_d8

    .line 124
    .end local v14    # "lineLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    :cond_11d
    add-int/lit8 v22, v22, 0x1

    goto :goto_ec

    .line 102
    .end local v20    # "compC":I
    .end local v21    # "compL":I
    .end local v22    # "i":I
    .end local v24    # "l":I
    .end local v25    # "match":I
    .end local v29    # "same":Z
    .end local v30    # "totoal":I
    :cond_120
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_81

    .line 143
    .end local v23    # "j":I
    .end local v27    # "pLast":[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    :cond_124
    new-instance v10, Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-direct {v10, v2, v3}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 145
    .local v10, "data":Lcom/oneplus/screenshot/longshot/match/MatchData;
    const-string/jumbo v2, "Longshot.StitchNextMatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StitchNextMatcher run posCurr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " posLast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " matched:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sizeLast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sizeCurr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mStep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    const-string/jumbo v4, " mExtendLast:"

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    const-string/jumbo v4, " mExtendCurr:"

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    const-string/jumbo v4, " lineLast:"

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    const-string/jumbo v4, " lineCurr:"

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 149
    const-string/jumbo v2, "StitchNextMatcher.data.init"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object/from16 v19, v0

    const/16 v16, 0x1

    move/from16 v11, v26

    move/from16 v12, v28

    invoke-virtual/range {v10 .. v19}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    .line 151
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 152
    return-object v10
.end method
