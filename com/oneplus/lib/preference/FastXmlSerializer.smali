.class public Lcom/oneplus/lib/preference/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "&quot;"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "&amp;"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-string v60, "&lt;"

    const/16 v61, 0x0

    const-string v62, "&gt;"

    const/16 v63, 0x0

    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/preference/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 53
    const-string v0, "                                                              "

    sput-object v0, Lcom/oneplus/lib/preference/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x2000

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mText:[C

    .line 62
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mIndent:Z

    .line 67
    iput v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mNesting:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method private append(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 72
    .local v0, "pos":I
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->flush()V

    .line 74
    iget v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 77
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 78
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 120
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    .line 82
    add-int v1, p2, p3

    .line 83
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 84
    add-int/lit16 v2, p2, 0x2000

    .line 85
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    sub-int v3, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 86
    move p2, v2

    .line 87
    .end local v2    # "next":I
    goto :goto_0

    .line 88
    :cond_1
    return-void

    .line 90
    .end local v1    # "end":I
    :cond_2
    iget v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 91
    .local v1, "pos":I
    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->flush()V

    .line 93
    iget v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 95
    :cond_3
    add-int v0, p2, p3

    iget-object v2, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 96
    add-int v0, v1, p3

    iput v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 97
    return-void
.end method

.method private append([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    .line 101
    add-int v1, p2, p3

    .line 102
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 103
    add-int/lit16 v2, p2, 0x2000

    .line 104
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    sub-int v3, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append([CII)V

    .line 105
    move p2, v2

    .line 106
    .end local v2    # "next":I
    goto :goto_0

    .line 107
    :cond_1
    return-void

    .line 109
    .end local v1    # "end":I
    :cond_2
    iget v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 110
    .local v1, "pos":I
    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->flush()V

    .line 112
    iget v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    add-int v0, v1, p3

    iput v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 116
    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    mul-int/lit8 p1, p1, 0x4

    .line 124
    sget-object v0, Lcom/oneplus/lib/preference/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 125
    sget-object v0, Lcom/oneplus/lib/preference/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 127
    :cond_0
    sget-object v0, Lcom/oneplus/lib/preference/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 128
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 133
    .local v0, "N":I
    sget-object v1, Lcom/oneplus/lib/preference/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v1, v1

    .line 134
    .local v1, "NE":C
    sget-object v2, Lcom/oneplus/lib/preference/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 135
    .local v2, "escapes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 137
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 138
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 139
    .local v5, "c":C
    if-lt v5, v1, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    aget-object v6, v2, v5

    .line 141
    .local v6, "escape":Ljava/lang/String;
    if-nez v6, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    if-ge v3, v4, :cond_3

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 143
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .line 144
    invoke-direct {p0, v6}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 137
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_4
    if-ge v3, v4, :cond_5

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 147
    :cond_5
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/oneplus/lib/preference/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v0, v0

    .line 151
    .local v0, "NE":C
    sget-object v1, Lcom/oneplus/lib/preference/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 152
    .local v1, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    .line 153
    .local v2, "end":I
    move v3, p2

    .line 155
    .local v3, "lastPos":I
    move v4, p2

    .local v4, "pos":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 156
    aget-char v5, p1, v4

    .line 157
    .local v5, "c":C
    if-lt v5, v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    aget-object v6, v1, v5

    .line 159
    .local v6, "escape":Ljava/lang/String;
    if-nez v6, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    if-ge v3, v4, :cond_2

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append([CII)V

    .line 161
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .line 162
    invoke-direct {p0, v6}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 155
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_3
    if-ge v3, v4, :cond_4

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append([CII)V

    .line 165
    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v1, v0

    .local v1, "position":I
    if-lez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 233
    iget-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 234
    iget-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(C)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 172
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(C)V

    .line 174
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 175
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p3}, Lcom/oneplus/lib/preference/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 178
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(C)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    .line 180
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->flush()V

    .line 200
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 204
    iget v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mNesting:I

    .line 205
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    if-eqz v0, :cond_1

    .line 209
    iget v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->appendIndent(I)V

    .line 211
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 212
    if-eqz p1, :cond_2

    .line 213
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(C)V

    .line 216
    :cond_2
    invoke-direct {p0, p2}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 217
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 219
    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    .line 221
    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_3

    .line 241
    iget-object v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mText:[C

    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 243
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 245
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->flushBytes()V

    .line 249
    iget-object v3, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 250
    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->flushBytes()V

    .line 255
    iget-object v3, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 256
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_1

    .line 246
    .restart local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mText:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 260
    :goto_1
    iput v2, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mPos:I

    .line 262
    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 301
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mIndent:Z

    .line 303
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 310
    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 322
    iput-object p1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 329
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 315
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v0

    .line 316
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 311
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 334
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "yes"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    .line 351
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 355
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 356
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 359
    iget v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->appendIndent(I)V

    .line 361
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mNesting:I

    .line 362
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(C)V

    .line 363
    if-eqz p1, :cond_2

    .line 364
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 365
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(C)V

    .line 367
    :cond_2
    invoke-direct {p0, p2}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 368
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    .line 370
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 388
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 390
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 393
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    .line 396
    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 375
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 376
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 377
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mInTag:Z

    .line 379
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/preference/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 380
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 381
    add-int v0, p2, p3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-char v0, p1, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/FastXmlSerializer;->mLineStart:Z

    .line 383
    :cond_2
    return-object p0
.end method
