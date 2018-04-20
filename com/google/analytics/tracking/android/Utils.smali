.class Lcom/google/analytics/tracking/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HEXBYTES:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-char v1, v0, v2

    const/16 v1, 0x32

    const/4 v2, 0x2

    aput-char v1, v0, v2

    const/16 v1, 0x33

    const/4 v2, 0x3

    aput-char v1, v0, v2

    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-char v1, v0, v2

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-char v1, v0, v2

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-char v1, v0, v2

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-char v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-char v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-char v1, v0, v2

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput-char v1, v0, v2

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput-char v1, v0, v2

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput-char v1, v0, v2

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput-char v1, v0, v2

    const/16 v1, 0x45

    const/16 v2, 0xe

    aput-char v1, v0, v2

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterCampaign(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "campaign"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_70

    .line 102
    move-object v4, p0

    .line 103
    .local v4, "urlParameters":Ljava/lang/String;
    const-string/jumbo v7, "?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_71

    .line 116
    :cond_13
    :goto_13
    const-string/jumbo v7, "%3D"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 123
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 128
    :goto_25
    invoke-static {v4}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 130
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x9

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "dclid"

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_source"

    aput-object v7, v6, v9

    const-string/jumbo v7, "gclid"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_campaign"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_medium"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_term"

    const/4 v8, 0x5

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_content"

    const/4 v8, 0x6

    aput-object v7, v6, v8

    const-string/jumbo v7, "utm_id"

    const/4 v8, 0x7

    aput-object v7, v6, v8

    const-string/jumbo v7, "gmob_t"

    const/16 v8, 0x8

    aput-object v7, v6, v8

    .line 142
    .local v6, "validParameters":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "params":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_68
    array-length v7, v6

    if-lt v1, v7, :cond_89

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 99
    .end local v1    # "i":I
    .end local v2    # "params":Ljava/lang/StringBuilder;
    .end local v3    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "urlParameters":Ljava/lang/String;
    .end local v6    # "validParameters":[Ljava/lang/String;
    :cond_70
    return-object v10

    .line 105
    .restart local v4    # "urlParameters":Ljava/lang/String;
    :cond_71
    const-string/jumbo v7, "[\\?]"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "urlParts":[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v9, :cond_13

    .line 107
    aget-object v4, v5, v9

    goto :goto_13

    .line 119
    .end local v5    # "urlParts":[Ljava/lang/String;
    :cond_7e
    :try_start_7e
    const-string/jumbo v7, "UTF-8"

    invoke-static {v4, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_84
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7e .. :try_end_84} :catch_86

    move-result-object v4

    goto :goto_25

    .line 120
    :catch_86
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return-object v10

    .line 124
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_88
    return-object v10

    .line 144
    .restart local v1    # "i":I
    .restart local v2    # "params":Ljava/lang/StringBuilder;
    .restart local v3    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "validParameters":[Ljava/lang/String;
    :cond_89
    aget-object v7, v6, v1

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 143
    :goto_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 145
    :cond_9a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_b9

    .line 148
    :goto_a0
    aget-object v7, v6, v1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v7, v6, v1

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_97

    .line 146
    :cond_b9
    const-string/jumbo v7, "&"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0
.end method

.method static fromHexDigit(C)I
    .registers 3
    .param p0, "hexDigit"    # C

    .prologue
    .line 188
    add-int/lit8 v0, p0, -0x30

    .line 191
    .local v0, "value":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_7

    .line 194
    :goto_6
    return v0

    .line 192
    :cond_7
    add-int/lit8 v0, v0, -0x7

    goto :goto_6
.end method

.method static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x0

    .line 163
    if-eqz p0, :cond_2c

    .line 166
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "lang":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 174
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    .end local v0    # "lang":Ljava/lang/StringBuilder;
    :cond_2c
    return-object v2

    .line 167
    :cond_2d
    return-object v2

    .line 172
    .restart local v0    # "lang":Ljava/lang/StringBuilder;
    :cond_2e
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method

.method static hexDecode(Ljava/lang/String;)[B
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 199
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-lt v1, v2, :cond_d

    .line 203
    return-object v0

    .line 200
    :cond_d
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Utils;->fromHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Utils;->fromHexDigit(C)I

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method static hexEncode([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 178
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [C

    .line 179
    .local v2, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, p0

    if-lt v1, v3, :cond_f

    .line 184
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 180
    :cond_f
    aget-byte v3, p0, v1

    and-int/lit16 v0, v3, 0xff

    .line 181
    .local v0, "b":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    shr-int/lit8 v5, v0, 0x4

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 182
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static parseURLParameters(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p0, "parameterString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "params":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_11
    if-lt v1, v2, :cond_14

    .line 34
    return-object v3

    .line 26
    :cond_14
    aget-object v5, v0, v1

    .line 27
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "ss":[Ljava/lang/String;
    array-length v7, v6

    if-gt v7, v10, :cond_26

    .line 30
    array-length v7, v6

    if-eq v7, v10, :cond_2e

    .line 26
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 29
    :cond_26
    aget-object v7, v6, v9

    aget-object v8, v6, v10

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 30
    :cond_2e
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_23

    .line 31
    aget-object v7, v6, v9

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23
.end method

.method public static putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    :goto_6
    return-void

    .line 208
    :cond_7
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public static safeParseBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p0, :cond_4

    .line 83
    :goto_3
    return p1

    .line 73
    :cond_4
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_f
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 77
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 80
    :cond_2a
    return v1

    .line 77
    :cond_2b
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_3
.end method

.method public static safeParseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/analytics/tracking/android/Utils;->safeParseDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static safeParseDouble(Ljava/lang/String;D)D
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 44
    if-eqz p0, :cond_7

    .line 48
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_8

    move-result-wide v2

    return-wide v2

    .line 45
    :cond_7
    return-wide p1

    .line 49
    :catch_8
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static safeParseLong(Ljava/lang/String;)J
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    if-eqz p0, :cond_9

    .line 60
    :try_start_4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_a

    move-result-wide v2

    return-wide v2

    .line 57
    :cond_9
    return-wide v2

    .line 61
    :catch_a
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v2
.end method
