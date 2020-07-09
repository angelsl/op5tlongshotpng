.class public final Lcom/oneplus/support/core/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/widget/TextViewCompat$OreoCallback;,
        Lcom/oneplus/support/core/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompat"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 442
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 443
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 445
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 423
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 425
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 426
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 428
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 406
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 408
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 409
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 411
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 459
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 460
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 462
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 392
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 393
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 395
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 281
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 282
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 283
    .local v0, "rtl":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 284
    .local v1, "compounds":[Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 286
    const/4 v3, 0x2

    aget-object v4, v1, v3

    .line 287
    .local v4, "start":Landroid/graphics/drawable/Drawable;
    aget-object v5, v1, v2

    .line 288
    .local v5, "end":Landroid/graphics/drawable/Drawable;
    aput-object v4, v1, v2

    .line 289
    aput-object v5, v1, v3

    .line 291
    .end local v4    # "start":Landroid/graphics/drawable/Drawable;
    .end local v5    # "end":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v1

    .line 293
    .end local v0    # "rtl":Z
    .end local v1    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 737
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 747
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0

    .line 213
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 214
    const-string v0, "mMaxMode"

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 215
    sput-boolean v1, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    .line 217
    :cond_1
    sget-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    invoke-static {v0, p0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 219
    sget-boolean v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    if-nez v0, :cond_2

    .line 220
    const-string v0, "mMaximum"

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    .line 221
    sput-boolean v1, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    .line 223
    :cond_2
    sget-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 224
    invoke-static {v0, p0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 227
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    return v0

    .line 239
    :cond_0
    sget-boolean v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 240
    const-string v0, "mMinMode"

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    .line 241
    sput-boolean v1, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    .line 243
    :cond_1
    sget-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    invoke-static {v0, p0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 245
    sget-boolean v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    if-nez v0, :cond_2

    .line 246
    const-string v0, "mMinimum"

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    .line 247
    sput-boolean v1, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    .line 249
    :cond_2
    sget-object v0, Lcom/oneplus/support/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 250
    invoke-static {v0, p0}, Lcom/oneplus/support/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 253
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextViewCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 109
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextViewCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    const/4 v0, -0x1

    return v0
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 345
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    .line 347
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 348
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 351
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "presetSizes"    # [I
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 371
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    .line 372
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 373
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 376
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "autoSizeTextType"    # I

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    .line 311
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_1

    .line 312
    move-object v0, p0

    check-cast v0, Lcom/oneplus/support/core/widget/AutoSizeableTextView;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 314
    :cond_1
    :goto_0
    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 136
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 137
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 138
    .local v0, "rtl":Z
    if-eqz v0, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_2

    :cond_3
    move-object v2, p3

    :goto_2
    invoke-virtual {p0, v1, p2, v2, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v0    # "rtl":Z
    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_3
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "top"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "end"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "bottom"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 194
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 195
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 197
    .local v0, "rtl":Z
    if-eqz v0, :cond_2

    move v1, p3

    goto :goto_1

    :cond_2
    move v1, p1

    .line 198
    :goto_1
    if-eqz v0, :cond_3

    move v2, p1

    goto :goto_2

    :cond_3
    move v2, p3

    .line 197
    :goto_2
    invoke-virtual {p0, v1, p2, v2, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 199
    .end local v0    # "rtl":Z
    goto :goto_3

    .line 200
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 202
    :goto_3
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 162
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 163
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 165
    .local v0, "rtl":Z
    if-eqz v0, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, p1

    .line 166
    :goto_1
    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_2

    :cond_3
    move-object v2, p3

    .line 165
    :goto_2
    invoke-virtual {p0, v1, p2, v2, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 167
    .end local v0    # "rtl":Z
    goto :goto_3

    .line 168
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_3
    return-void
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    new-instance v0, Lcom/oneplus/support/core/widget/TextViewCompat$OreoCallback;

    invoke-direct {v0, p1, p0}, Lcom/oneplus/support/core/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 499
    return-void

    .line 490
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 491
    return-void
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "lastBaselineToBottomHeight"    # I
        .annotation build Lcom/oneplus/support/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/Px;
        .end annotation
    .end param

    .line 707
    invoke-static {p1}, Lcom/oneplus/support/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 709
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 711
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 714
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .local v1, "fontMetricsBottom":I
    goto :goto_1

    .line 715
    .end local v1    # "fontMetricsBottom":I
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 723
    .restart local v1    # "fontMetricsBottom":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_2

    .line 724
    sub-int v2, p1, v1

    .line 725
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 726
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 725
    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 728
    .end local v2    # "paddingBottom":I
    :cond_2
    return-void
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "lineHeight"    # I
        .annotation build Lcom/oneplus/support/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/Px;
        .end annotation
    .end param

    .line 765
    invoke-static {p1}, Lcom/oneplus/support/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 767
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 769
    .local v0, "fontHeight":I
    if-eq p1, v0, :cond_0

    .line 771
    sub-int v1, p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 773
    :cond_0
    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 271
    :goto_0
    return-void
.end method
