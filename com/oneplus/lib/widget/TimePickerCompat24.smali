.class public final Lcom/oneplus/lib/widget/TimePickerCompat24;
.super Ljava/lang/Object;
.source "TimePickerCompat24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static setHourFormat(Lcom/oneplus/lib/widget/TextInputTimePickerView;Ljava/util/Locale;)V
    .locals 4
    .param p0, "textInputPickerView"    # Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 14
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v0

    .line 15
    .local v0, "digits":[C
    const/4 v1, 0x0

    .line 17
    .local v1, "maxCharLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 18
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    .end local v2    # "i":I
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setHourFormat(I)V

    .line 22
    return-void
.end method
