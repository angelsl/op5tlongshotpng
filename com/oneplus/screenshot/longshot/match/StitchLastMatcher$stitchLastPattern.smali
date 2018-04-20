.class Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
.super Ljava/lang/Object;
.source "StitchLastMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "stitchLastPattern"
.end annotation


# instance fields
.field mChecked:Z

.field mIndex:I

.field mPixels:Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

.field mRepeatCount:I

.field mSimilarity:I

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;ILcom/oneplus/screenshot/longshot/bitmap/Pixels;)V
    .registers 6
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
    .param p2, "index"    # I
    .param p3, "pixel"    # Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .prologue
    const/4 v1, 0x0

    .line 489
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->this$0:Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mIndex:I

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mPixels:Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 485
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mChecked:Z

    .line 486
    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mSimilarity:I

    .line 487
    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mRepeatCount:I

    .line 490
    iput p2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mIndex:I

    .line 491
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mPixels:Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 492
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .registers 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mChecked:Z

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 495
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mIndex:I

    return v0
.end method

.method public getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mPixels:Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    .prologue
    .line 523
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mRepeatCount:I

    return v0
.end method

.method public getSimilarity()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mSimilarity:I

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mChecked:Z

    .line 512
    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2
    .param p1, "repeatCount"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mRepeatCount:I

    .line 520
    return-void
.end method

.method public setSimilarity(I)V
    .registers 2
    .param p1, "similarity"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mSimilarity:I

    .line 504
    return-void
.end method
