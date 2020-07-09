.class public Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;
.super Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
.source "StitchSLastMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchSLastMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;-><init>(Landroid/content/Context;I)V

    .line 18
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_SLAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;->mSize:I

    .line 19
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_SLAST_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;->mOffsetLast:I

    .line 20
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_SLAST_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;->mOffsetCurr:I

    .line 21
    return-void
.end method


# virtual methods
.method protected getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I
    .locals 1
    .param p1, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "cache"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 38
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;->mOffsetCurr:I

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchSLastMatcher;->getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getStep()I
    .locals 1

    .line 33
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_SLAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "StitchSLast"

    return-object v0
.end method
