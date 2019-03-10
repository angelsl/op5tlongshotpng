.class public abstract Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.super Ljava/lang/Object;
.source "BaseMatcher.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/match/Matcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.BaseMatcher"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mIndex:I

.field protected mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mLeftSideOffset:I

.field protected mOffsetCurr:I

.field protected mOffsetLast:I

.field protected mRightSideOffset:I

.field protected mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mSize:I

.field protected mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 16
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 17
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 18
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    .line 20
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    .line 21
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    .line 22
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    .line 23
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    .line 24
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mRightSideOffset:I

    .line 25
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLeftSideOffset:I

    .line 31
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    .line 33
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->canDump()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    .line 34
    iput v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->createDumper()V

    goto :goto_32

    .line 37
    :cond_2c
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->getStep()I

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    .line 41
    :goto_32
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_RTL:Z

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getSideOffset(ZZ)I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mRightSideOffset:I

    .line 42
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_RTL:Z

    invoke-static {v2, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getSideOffset(ZZ)I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLeftSideOffset:I

    .line 44
    return-void-no-barrier
.end method


# virtual methods
.method protected abstract canDump()Z
.end method

.method protected abstract createDumper()V
.end method

.method protected getCurrTag()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "Curr"

    return-object v0
.end method

.method protected getLastTag()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "Last"

    return-object v0
.end method

.method public getOffsetCurr()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    return v0
.end method

.method public getOffsetLast()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    return v0
.end method

.method protected getStep()I
    .registers 2

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method
