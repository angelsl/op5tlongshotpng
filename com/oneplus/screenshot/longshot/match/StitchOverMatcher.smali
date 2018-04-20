.class public Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;
.super Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.source "StitchOverMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOverMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
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
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_42

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

    .line 30
    :goto_30
    return-void

    .line 22
    :pswitch_31
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mSize:I

    .line 23
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_OVER_CURR_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;->mExtendCurr:I

    goto :goto_30

    .line 20
    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method protected canDump()Z
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected getStep()I
    .registers 2

    .prologue
    .line 47
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_14

    .line 51
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_OVER_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 49
    :pswitch_c
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 47
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string/jumbo v0, "StitchOver"

    return-object v0
.end method
