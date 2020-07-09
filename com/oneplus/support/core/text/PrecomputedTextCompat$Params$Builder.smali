.class public Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBreakStrategy:I

.field private mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field private mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 106
    iput v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    iput v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 110
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 111
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 115
    :goto_1
    return-void
.end method


# virtual methods
.method public build()Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;
    .locals 7
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 177
    new-instance v6, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    iget v4, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILcom/oneplus/support/core/text/PrecomputedTextCompat$1;)V

    return-object v6
.end method

.method public setBreakStrategy(I)Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "strategy"    # I
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 131
    iput p1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 132
    return-object p0
.end method

.method public setHyphenationFrequency(I)Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "frequency"    # I
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 149
    iput p1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    .line 150
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 168
    return-object p0
.end method
