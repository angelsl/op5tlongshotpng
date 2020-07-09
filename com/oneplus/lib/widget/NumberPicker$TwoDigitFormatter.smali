.class Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Lcom/oneplus/lib/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 173
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 174
    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 191
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 177
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 178
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .line 181
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 182
    .local v0, "currentLocale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 183
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 184
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    const-string v3, "%02d"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 186
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
