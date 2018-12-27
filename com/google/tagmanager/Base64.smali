.class final Lcom/google/tagmanager/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Base64$Base64DecoderException;
    }
.end annotation


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final PADDING_BYTE:B = 0x3dt

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_22

    sput-object v1, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    .line 73
    new-array v0, v0, [B

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_ALPHABET:[B

    .line 92
    const/16 v0, 0x80

    new-array v1, v0, [B

    fill-array-data v1, :array_6a

    sput-object v1, Lcom/google/tagmanager/Base64;->DECODABET:[B

    .line 127
    new-array v0, v0, [B

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_DECODABET:[B

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    nop

    :array_22
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_46
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_6a
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_ae
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 448
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/tagmanager/Base64;->decode([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)[B
    .registers 3
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .line 473
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/tagmanager/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .registers 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/google/tagmanager/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/tagmanager/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static decode([BII[B)[B
    .registers 20
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "decodabet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    move/from16 v0, p2

    .line 532
    move-object/from16 v1, p3

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    div-int/2addr v2, v3

    .line 533
    .local v2, "len34":I
    const/4 v4, 0x2

    add-int v5, v4, v2

    new-array v5, v5, [B

    .line 534
    .local v5, "outBuff":[B
    const/4 v6, 0x0

    .line 536
    .local v6, "outBuffPosn":I
    new-array v7, v3, [B

    .line 537
    .local v7, "b4":[B
    const/4 v8, 0x0

    .line 538
    .local v8, "b4Posn":I
    const/4 v9, 0x0

    .line 539
    .local v9, "i":I
    const/4 v10, 0x0

    .line 540
    .local v10, "sbiCrop":B
    const/4 v11, 0x0

    .line 541
    .local v11, "sbiDecode":B
    const/4 v12, 0x0

    .line 542
    .local v12, "paddingByteSeen":Z
    const/4 v9, 0x0

    :goto_16
    const/16 v13, 0x3d

    if-ge v9, v0, :cond_b9

    .line 543
    add-int v14, v9, p1

    aget-byte v14, p0, v14

    and-int/lit8 v3, v14, 0x7f

    int-to-byte v10, v3

    .line 544
    aget-byte v11, v1, v10

    .line 546
    const/4 v3, -0x5

    if-lt v11, v3, :cond_91

    .line 551
    const/4 v3, -0x1

    if-lt v11, v3, :cond_4b

    .line 552
    if-ne v10, v13, :cond_64

    .line 553
    if-eqz v12, :cond_2e

    .line 554
    goto :goto_4b

    .line 558
    :cond_2e
    if-lt v9, v4, :cond_4d

    .line 562
    const/4 v3, 0x1

    .line 563
    .end local v12    # "paddingByteSeen":Z
    .local v3, "paddingByteSeen":Z
    add-int/lit8 v12, v0, -0x1

    add-int v12, v12, p1

    aget-byte v12, p0, v12

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v12, v12

    .line 564
    .local v12, "lastByte":B
    if-eq v12, v13, :cond_49

    const/16 v13, 0xa

    if-ne v12, v13, :cond_41

    .end local v12    # "lastByte":B
    goto :goto_49

    .line 565
    .restart local v12    # "lastByte":B
    :cond_41
    new-instance v4, Lcom/google/tagmanager/Base64$Base64DecoderException;

    const-string v13, "encoded value has invalid trailing byte"

    invoke-direct {v4, v13}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 569
    .end local v12    # "lastByte":B
    :cond_49
    :goto_49
    nop

    .line 542
    move v12, v3

    .end local v3    # "paddingByteSeen":Z
    .local v12, "paddingByteSeen":Z
    :cond_4b
    :goto_4b
    const/4 v13, 0x4

    goto :goto_8d

    .line 559
    :cond_4d
    new-instance v3, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid padding byte found in position "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 569
    :cond_64
    if-nez v12, :cond_76

    .line 574
    add-int/lit8 v3, v8, 0x1

    .local v3, "b4Posn":I
    aput-byte v10, v7, v8

    .line 575
    .end local v8    # "b4Posn":I
    const/4 v13, 0x4

    if-ne v3, v13, :cond_74

    .line 576
    const/4 v8, 0x0

    invoke-static {v7, v8, v5, v6, v1}, Lcom/google/tagmanager/Base64;->decode4to3([BI[BI[B)I

    move-result v8

    add-int/2addr v6, v8

    .line 577
    const/4 v3, 0x0

    .line 542
    .end local v3    # "b4Posn":I
    .restart local v8    # "b4Posn":I
    :cond_74
    move v8, v3

    goto :goto_8d

    .line 570
    :cond_76
    new-instance v3, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Data found after trailing padding byte at index "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    :goto_8d
    add-int/lit8 v9, v9, 0x1

    move v3, v13

    goto :goto_16

    .line 547
    :cond_91
    new-instance v3, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad Base64 input character at "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v13, v9, p1

    aget-byte v13, p0, v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "(decimal)"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    :cond_b9
    if-eqz v8, :cond_e0

    .line 590
    const/4 v3, 0x1

    if-eq v8, v3, :cond_c7

    .line 593
    aput-byte v13, v7, v8

    .line 594
    const/4 v3, 0x0

    invoke-static {v7, v3, v5, v6, v1}, Lcom/google/tagmanager/Base64;->decode4to3([BI[BI[B)I

    move-result v4

    add-int/2addr v6, v4

    goto :goto_e0

    .line 591
    :cond_c7
    new-instance v3, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "single trailing character at offset "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v0, -0x1

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 597
    :cond_e0
    :goto_e0
    new-array v3, v6, [B

    .line 598
    .local v3, "out":[B
    const/4 v4, 0x0

    invoke-static {v5, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    return-object v3
.end method

.method private static decode4to3([BI[BI[B)I
    .registers 8
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "decodabet"    # [B

    .line 404
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_22

    .line 405
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    .line 409
    .local v0, "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 410
    const/4 v1, 0x1

    return v1

    .line 411
    .end local v0    # "outBuff":I
    :cond_22
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_54

    .line 413
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    .line 418
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 419
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 420
    const/4 v1, 0x2

    return v1

    .line 423
    .end local v0    # "outBuff":I
    :cond_54
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 429
    .restart local v0    # "outBuff":I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 430
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 431
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 432
    const/4 v1, 0x3

    return v1
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 460
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/tagmanager/Base64;->decodeWebSafe([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeWebSafe([B)[B
    .registers 3
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .line 486
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/tagmanager/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .registers 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .line 517
    sget-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/tagmanager/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    array-length v0, p0

    sget-object v1, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v1, v3}, Lcom/google/tagmanager/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([BII[BZ)Ljava/lang/String;
    .registers 9
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "doPadding"    # Z

    .line 300
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/tagmanager/Base64;->encode([BII[BI)[B

    move-result-object v0

    .line 301
    .local v0, "outBuff":[B
    array-length v1, v0

    .line 305
    .local v1, "outLen":I
    :goto_8
    if-nez p4, :cond_18

    if-lez v1, :cond_18

    .line 306
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_15

    .line 307
    goto :goto_18

    .line 309
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 312
    :cond_18
    :goto_18
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method public static encode([BZ)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # [B
    .param p1, "doPadding"    # Z

    .line 273
    array-length v0, p0

    sget-object v1, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/google/tagmanager/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[BI)[B
    .registers 21
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "maxLineLength"    # I

    move/from16 v6, p2

    .line 327
    move/from16 v7, p4

    add-int/lit8 v0, v6, 0x2

    div-int/lit8 v8, v0, 0x3

    .line 328
    .local v8, "lenDiv3":I
    mul-int/lit8 v9, v8, 0x4

    .line 329
    .local v9, "len43":I
    div-int v0, v9, v7

    add-int/2addr v0, v9

    new-array v10, v0, [B

    .line 332
    .local v10, "outBuff":[B
    const/4 v0, 0x0

    .line 333
    .local v0, "d":I
    const/4 v1, 0x0

    .line 334
    .local v1, "e":I
    add-int/lit8 v11, v6, -0x2

    .line 335
    .local v11, "len2":I
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    .end local v0    # "d":I
    .end local v1    # "e":I
    .local v2, "lineLength":I
    .local v12, "d":I
    .local v13, "e":I
    :goto_16
    move v14, v2

    .line 336
    .end local v2    # "lineLength":I
    .local v14, "lineLength":I
    const/16 v15, 0xa

    if-ge v12, v11, :cond_6e

    .line 341
    add-int v0, v12, p1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v12, 0x1

    add-int v1, v1, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v12, 0x2

    add-int v1, v1, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 345
    .local v0, "inBuff":I
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p3, v1

    aput-byte v1, v10, v13

    .line 346
    add-int/lit8 v1, v13, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 347
    add-int/lit8 v1, v13, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 348
    add-int/lit8 v1, v13, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 350
    add-int/lit8 v1, v14, 0x4

    .line 351
    .end local v14    # "lineLength":I
    .local v1, "lineLength":I
    if-ne v1, v7, :cond_68

    .line 352
    add-int/lit8 v2, v13, 0x4

    aput-byte v15, v10, v2

    .line 353
    add-int/lit8 v13, v13, 0x1

    .line 354
    const/4 v0, 0x0

    .line 336
    .end local v1    # "lineLength":I
    .local v0, "lineLength":I
    move v2, v0

    goto :goto_69

    .end local v0    # "lineLength":I
    .restart local v1    # "lineLength":I
    :cond_68
    move v2, v1

    .end local v1    # "lineLength":I
    .restart local v2    # "lineLength":I
    :goto_69
    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v13, v13, 0x4

    goto :goto_16

    .line 358
    .end local v2    # "lineLength":I
    .restart local v14    # "lineLength":I
    :cond_6e
    if-ge v12, v6, :cond_8a

    .line 359
    add-int v1, v12, p1

    sub-int v2, v6, v12

    move-object/from16 v0, p0

    move-object v3, v10

    move v4, v13

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/tagmanager/Base64;->encode3to4([BII[BI[B)[B

    .line 361
    add-int/lit8 v0, v14, 0x4

    .line 362
    .end local v14    # "lineLength":I
    .restart local v0    # "lineLength":I
    if-ne v0, v7, :cond_87

    .line 364
    add-int/lit8 v1, v13, 0x4

    aput-byte v15, v10, v1

    .line 365
    add-int/lit8 v13, v13, 0x1

    .line 367
    :cond_87
    add-int/lit8 v13, v13, 0x4

    goto :goto_8b

    .line 371
    .end local v0    # "lineLength":I
    .restart local v14    # "lineLength":I
    :cond_8a
    move v0, v14

    .end local v14    # "lineLength":I
    .restart local v0    # "lineLength":I
    :goto_8b
    return-object v10
.end method

.method private static encode3to4([BII[BI[B)[B
    .registers 10
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "alphabet"    # [B

    .line 222
    const/4 v0, 0x0

    if-lez p2, :cond_a

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    const/4 v2, 0x1

    if-le p2, v2, :cond_17

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    goto :goto_18

    :cond_17
    move v2, v0

    :goto_18
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_25

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    nop

    :cond_25
    or-int/2addr v0, v1

    .line 227
    .local v0, "inBuff":I
    const/16 v1, 0x3d

    packed-switch p2, :pswitch_data_88

    .line 247
    return-object p3

    .line 229
    :pswitch_2c
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 230
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 231
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 232
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 233
    return-object p3

    .line 235
    :pswitch_4f
    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, p5, v2

    aput-byte v2, p3, p4

    .line 236
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 237
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 238
    add-int/lit8 v2, p4, 0x3

    aput-byte v1, p3, v2

    .line 239
    return-object p3

    .line 241
    :pswitch_6e
    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, p5, v2

    aput-byte v2, p3, p4

    .line 242
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 243
    add-int/lit8 v2, p4, 0x2

    aput-byte v1, p3, v2

    .line 244
    add-int/lit8 v2, p4, 0x3

    aput-byte v1, p3, v2

    .line 245
    return-object p3

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_4f
        :pswitch_2c
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # [B
    .param p1, "doPadding"    # Z

    .line 284
    array-length v0, p0

    sget-object v1, Lcom/google/tagmanager/Base64;->WEBSAFE_ALPHABET:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/google/tagmanager/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlphabet()[B
    .registers 1

    .line 175
    sget-object v0, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static getWebsafeAlphabet()[B
    .registers 1

    .line 182
    sget-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_ALPHABET:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
