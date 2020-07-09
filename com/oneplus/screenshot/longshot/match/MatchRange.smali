.class public Lcom/oneplus/screenshot/longshot/match/MatchRange;
.super Ljava/lang/Object;
.source "MatchRange.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MatchRange"


# instance fields
.field private mEnd:I

.field private mLines:[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

.field private mStart:I


# direct methods
.method public constructor <init>([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V
    .locals 1
    .param p1, "lines"    # [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mStart:I

    .line 13
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mEnd:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mLines:[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 20
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mLines:[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    .line 21
    iput p2, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mStart:I

    .line 22
    iput p3, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mEnd:I

    .line 23
    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mEnd:I

    return v0
.end method

.method public getLines()[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mLines:[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .line 48
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mEnd:I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mLines:[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mLines:[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/MatchRange;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
