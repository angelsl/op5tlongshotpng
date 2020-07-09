.class public final Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params$Builder;
    }
.end annotation


# instance fields
.field private final mBreakStrategy:I

.field private final mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTextDir:Landroid/text/TextDirectionHeuristic;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWrapped:Landroid/text/PrecomputedText$Params;


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .locals 1
    .param p1, "wrapped"    # Landroid/text/PrecomputedText$Params;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 198
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 199
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 200
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    .line 201
    iput-object p1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    .line 203
    return-void
.end method

.method private constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "strategy"    # I
    .param p4, "frequency"    # I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v0, p1}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v0, p3}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p4}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    goto :goto_0

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    .line 189
    :goto_0
    iput-object p1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 190
    iput-object p2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 191
    iput p3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 192
    iput p4, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILcom/oneplus/support/core/text/PrecomputedTextCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/text/TextPaint;
    .param p2, "x1"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/oneplus/support/core/text/PrecomputedTextCompat$1;

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;)Landroid/text/PrecomputedText$Params;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;

    .line 69
    iget-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 259
    return v0

    .line 261
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    instance-of v2, p1, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 264
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;

    .line 265
    .local v2, "other":Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    if-eqz v3, :cond_2

    .line 266
    iget-object v0, v2, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    invoke-virtual {v3, v0}, Landroid/text/PrecomputedText$Params;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 269
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    .line 270
    iget v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 271
    return v1

    .line 273
    :cond_3
    iget v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 274
    return v1

    .line 278
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_5

    .line 279
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 280
    return v1

    .line 284
    :cond_5
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    .line 285
    return v1

    .line 287
    :cond_6
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    .line 288
    return v1

    .line 290
    :cond_7
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    .line 291
    return v1

    .line 293
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_a

    .line 294
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    .line 295
    return v1

    .line 297
    :cond_9
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 299
    return v1

    .line 302
    :cond_a
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 303
    return v1

    .line 305
    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_c

    .line 306
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 307
    return v1

    .line 309
    :cond_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_d

    .line 310
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 311
    return v1

    .line 314
    :cond_d
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_e

    .line 315
    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 316
    return v1

    .line 318
    :cond_e
    iget-object v3, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 319
    return v1

    .line 322
    :cond_f
    return v0

    .line 262
    .end local v2    # "other":Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;
    :cond_10
    :goto_0
    return v1
.end method

.method public getBreakStrategy()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 236
    iget v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 248
    iget v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    return v0
.end method

.method public getTextDirection()Landroid/text/TextDirectionHeuristic;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public hashCode()I
    .locals 14

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    const/16 v2, 0xb

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x18

    if-lt v0, v13, :cond_0

    .line 328
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v12

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 329
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v10

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 330
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    aput-object v2, v0, v4

    iget v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 328
    invoke-static {v0}, Lcom/oneplus/support/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 332
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v0, v13, :cond_1

    .line 333
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v12

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 334
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v10

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 335
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    aput-object v2, v0, v4

    iget v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 333
    invoke-static {v0}, Lcom/oneplus/support/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 337
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 338
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 339
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 340
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    aput-object v1, v0, v6

    iget v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 338
    invoke-static {v0}, Lcom/oneplus/support/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 341
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 342
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 343
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 344
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    aput-object v1, v0, v6

    iget v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 342
    invoke-static {v0}, Lcom/oneplus/support/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 346
    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 347
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    aput-object v1, v0, v7

    iget v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iget v1, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 346
    invoke-static {v0}, Lcom/oneplus/support/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textScaleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textSkewX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", letterSpacing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", elegantTextHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, ", textLocale="

    if-lt v1, v2, :cond_1

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", typeface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", variationSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", breakStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hyphenationFrequency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/support/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
