.class Lcom/google/analytics/tracking/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HEXBYTES:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    return-void-no-barrier

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterCampaign(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "campaign"    # Ljava/lang/String;

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 99
    return-object v1

    .line 102
    :cond_8
    move-object v0, p0

    .line 103
    .local v0, "urlParameters":Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 105
    const-string v2, "[\\?]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "urlParts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1d

    .line 107
    aget-object v0, v2, v4

    .line 116
    .end local v2    # "urlParts":[Ljava/lang/String;
    :cond_1d
    const-string v2, "%3D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 119
    :try_start_25
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2b} :catch_2d

    move-object v0, v2

    .line 122
    goto :goto_38

    .line 120
    :catch_2d
    move-exception v2

    .line 121
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    return-object v1

    .line 123
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2f
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 124
    return-object v1

    .line 128
    :cond_38
    :goto_38
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 130
    .local v1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "dclid"

    const-string v3, "utm_source"

    const-string v4, "gclid"

    const-string v5, "utm_campaign"

    const-string v6, "utm_medium"

    const-string v7, "utm_term"

    const-string v8, "utm_content"

    const-string v9, "utm_id"

    const-string v10, "gmob_t"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "validParameters":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v3, "params":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_58
    array-length v5, v2

    if-ge v4, v5, :cond_8c

    .line 144
    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_89

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_74

    .line 146
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_74
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 151
    .end local v4    # "i":I
    :cond_8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static fromHexDigit(C)I
    .registers 3
    .param p0, "hexDigit"    # C

    .line 188
    add-int/lit8 v0, p0, -0x30

    .line 191
    .local v0, "value":I
    const/16 v1, 0x9

    if-le v0, v1, :cond_8

    .line 192
    add-int/lit8 v0, v0, -0x7

    .line 194
    :cond_8
    return v0
.end method

.method static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 163
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 164
    return-object v0

    .line 166
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 167
    return-object v0

    .line 169
    :cond_f
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

    if-nez v1, :cond_39

    .line 172
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static hexDecode(Ljava/lang/String;)[B
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    .line 199
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_2b

    .line 200
    mul-int v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Utils;->fromHexDigit(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Utils;->fromHexDigit(C)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 203
    .end local v2    # "i":I
    :cond_2b
    return-object v0
.end method

.method static hexEncode([B)Ljava/lang/String;
    .registers 8
    .param p0, "bytes"    # [B

    .line 178
    array-length v0, p0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    new-array v0, v0, [C

    .line 179
    .local v0, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_26

    .line 180
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 181
    .local v3, "b":I
    mul-int v4, v1, v2

    sget-object v5, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 182
    mul-int v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 179
    .end local v3    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 184
    .end local v2    # "i":I
    :cond_26
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static parseURLParameters(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .param p0, "parameterString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "params":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i$":I
    :goto_f
    if-ge v5, v3, :cond_39

    aget-object v6, v2, v5

    .line 27
    .local v6, "s":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 28
    .local v7, "ss":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_25

    .line 29
    aget-object v8, v7, v4

    aget-object v9, v7, v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 30
    :cond_25
    array-length v8, v7

    if-ne v8, v9, :cond_36

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_36

    .line 31
    aget-object v8, v7, v4

    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "ss":[Ljava/lang/String;
    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 34
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v5    # "i$":I
    :cond_39
    return-object v0
.end method

.method public static putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 207
    .local p0, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 208
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_9
    return-void-no-barrier
.end method

.method public static safeParseBoolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 72
    if-eqz p0, :cond_37

    .line 73
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_35

    .line 77
    :cond_1b
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 80
    :cond_33
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_35
    :goto_35
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_37
    return p1
.end method

.method public static safeParseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/analytics/tracking/android/Utils;->safeParseDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static safeParseDouble(Ljava/lang/String;D)D
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .line 44
    if-nez p0, :cond_3

    .line 45
    return-wide p1

    .line 48
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

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

    .line 56
    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    .line 57
    return-wide v0

    .line 60
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide v2

    .line 61
    :catch_a
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method
