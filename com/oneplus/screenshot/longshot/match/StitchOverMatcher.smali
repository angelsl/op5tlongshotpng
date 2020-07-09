.class public Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;
.super Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.source "StitchOverMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOverMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;-><init>(Landroid/content/Context;I)V

    .line 17
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_OVER_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mExtendLast:I

    .line 18
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_OVER_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mOffsetLast:I

    .line 19
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_OVER_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mOffsetCurr:I

    .line 20
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_OVER_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mSize:I

    .line 27
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_OVER_CURR_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mExtendCurr:I

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mSize:I

    .line 23
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_OVER_CURR_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mExtendCurr:I

    .line 24
    nop

    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 42
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected getStep()I
    .locals 2

    .line 47
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 51
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_OVER_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 49
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "StitchOver"

    return-object v0
.end method
