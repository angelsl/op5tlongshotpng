.class Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;
.super Ljava/lang/Object;
.source "StitchLastMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StitchLastPattern"
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
    .locals 1
    .param p2, "index"    # I
    .param p3, "pixel"    # Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 464
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->this$0:Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mIndex:I

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mPixels:Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 460
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mChecked:Z

    .line 461
    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mSimilarity:I

    .line 462
    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mRepeatCount:I

    .line 465
    iput p2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mIndex:I

    .line 466
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mPixels:Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 467
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mChecked:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 470
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mIndex:I

    return v0
.end method

.method public getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mPixels:Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mRepeatCount:I

    return v0
.end method

.method public getSimilarity()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mSimilarity:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 486
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mChecked:Z

    .line 487
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .line 494
    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mRepeatCount:I

    .line 495
    return-void
.end method

.method public setSimilarity(I)V
    .locals 0
    .param p1, "similarity"    # I

    .line 478
    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$StitchLastPattern;->mSimilarity:I

    .line 479
    return-void
.end method
