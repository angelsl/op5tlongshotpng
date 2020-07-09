.class public final Lcom/google/analytics/containertag/proto/Serving$Resource;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private static final TEMPLATE_VERSION_SET_DEFAULT:Ljava/lang/String; = "0"


# instance fields
.field public key:[Ljava/lang/String;

.field public liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field public macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public malwareScanAuthCode:Ljava/lang/String;

.field public oBSOLETEEnableAutoEventTracking:Z

.field public predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public previewAuthCode:Ljava/lang/String;

.field public property:[Lcom/google/analytics/containertag/proto/Serving$Property;

.field public reportingSampleRate:F

.field public resourceFormatVersion:I

.field public rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

.field public supplemental:[Ljava/lang/String;

.field public tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public templateVersionSet:Ljava/lang/String;

.field public usageContext:[Ljava/lang/String;

.field public value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Resource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1348
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1351
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1354
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1357
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1360
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1363
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1366
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1369
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1372
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1378
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1382
    const-string v1, "0"

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1385
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1391
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1397
    sget-object v1, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1400
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1348
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1911
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1905
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 3

    .line 1403
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1404
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1405
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1406
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1407
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1408
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1409
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1410
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1412
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1413
    const-string v1, "0"

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1414
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1416
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1417
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1418
    sget-object v2, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1419
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1420
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    .line 1421
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1422
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1427
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1428
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1429
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 1430
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_3

    :cond_5
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v3, :cond_8

    goto :goto_4

    :cond_6
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_4
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_8

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_5
    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 1595
    const/4 v0, 0x0

    .line 1596
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1597
    const/4 v1, 0x0

    .line 1598
    .local v1, "dataSize":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1599
    .local v5, "element":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1598
    .end local v5    # "element":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1602
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    add-int/2addr v0, v1

    .line 1603
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1605
    .end local v1    # "dataSize":I
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 1606
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 1607
    .local v5, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v2, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1606
    .end local v5    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1611
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v1, :cond_3

    .line 1612
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 1613
    .local v5, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1612
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1617
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_4

    .line 1618
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 1619
    .local v5, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v6, 0x4

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1618
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1623
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_5

    .line 1624
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 1625
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v6, 0x5

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1624
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1629
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_6

    .line 1630
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_5
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    .line 1631
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v6, 0x6

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1630
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1635
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v1, :cond_7

    .line 1636
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_6
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 1637
    .local v5, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v6, 0x7

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1636
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1641
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1642
    const/16 v1, 0x9

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1645
    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1646
    const/16 v1, 0xa

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1649
    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1650
    const/16 v1, 0xc

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1653
    :cond_a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1654
    const/16 v1, 0xd

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1657
    :cond_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v1, :cond_c

    .line 1658
    const/16 v3, 0xe

    invoke-static {v3, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1661
    :cond_c
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_d

    .line 1662
    const/16 v3, 0xf

    invoke-static {v3, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1665
    :cond_d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v1, :cond_f

    array-length v1, v1

    if-lez v1, :cond_f

    .line 1666
    const/4 v1, 0x0

    .line 1667
    .local v1, "dataSize":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_7
    if-ge v5, v4, :cond_e

    aget-object v6, v3, v5

    .line 1668
    .local v6, "element":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    .line 1667
    .end local v6    # "element":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1671
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_e
    add-int/2addr v0, v1

    .line 1672
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1674
    .end local v1    # "dataSize":I
    :cond_f
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v1, :cond_10

    .line 1675
    const/16 v3, 0x11

    invoke-static {v3, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1678
    :cond_10
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v1, :cond_11

    .line 1679
    const/16 v3, 0x12

    invoke-static {v3, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1682
    :cond_11
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v1, :cond_13

    array-length v1, v1

    if-lez v1, :cond_13

    .line 1683
    const/4 v1, 0x0

    .line 1684
    .restart local v1    # "dataSize":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_8
    if-ge v5, v4, :cond_12

    aget-object v6, v3, v5

    .line 1685
    .restart local v6    # "element":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    .line 1684
    .end local v6    # "element":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1688
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_12
    add-int/2addr v0, v1

    .line 1689
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1691
    .end local v1    # "dataSize":I
    :cond_13
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1692
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1693
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1451
    const/16 v0, 0x11

    .line 1452
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_2

    .line 1454
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1455
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v4, v3

    .line 1454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1458
    .end local v1    # "i":I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_5

    .line 1460
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 1461
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int v0, v4, v3

    .line 1460
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1464
    .end local v1    # "i":I
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_6

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_8

    .line 1466
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 1467
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v3

    :goto_7
    add-int v0, v4, v3

    .line 1466
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1470
    .end local v1    # "i":I
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v1, :cond_9

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_b

    .line 1472
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v4, v3

    if-ge v1, v4, :cond_b

    .line 1473
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$Property;->hashCode()I

    move-result v3

    :goto_a
    add-int v0, v4, v3

    .line 1472
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1476
    .end local v1    # "i":I
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v1, :cond_c

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_e

    .line 1478
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_e

    .line 1479
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v3

    :goto_d
    add-int v0, v4, v3

    .line 1478
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1482
    .end local v1    # "i":I
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v1, :cond_f

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_11

    .line 1484
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_11

    .line 1485
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_10

    move v3, v2

    goto :goto_10

    :cond_10
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v3

    :goto_10
    add-int v0, v4, v3

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1488
    .end local v1    # "i":I
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v1, :cond_12

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_14

    .line 1490
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_12
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_14

    .line 1491
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_13

    move v3, v2

    goto :goto_13

    :cond_13
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v3

    :goto_13
    add-int v0, v4, v3

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1494
    .end local v1    # "i":I
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v1, :cond_15

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_17

    .line 1496
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_15
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v4, v3

    if-ge v1, v4, :cond_17

    .line 1497
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_16

    move v3, v2

    goto :goto_16

    :cond_16
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$Rule;->hashCode()I

    move-result v3

    :goto_16
    add-int v0, v4, v3

    .line 1496
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1500
    .end local v1    # "i":I
    :cond_17
    :goto_17
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v3, :cond_18

    move v3, v2

    goto :goto_18

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v1, v3

    .line 1501
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v3, :cond_19

    move v3, v2

    goto :goto_19

    :cond_19
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    .line 1502
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v3, :cond_1a

    move v3, v2

    goto :goto_1a

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v1, v3

    .line 1503
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v3, :cond_1b

    move v3, v2

    goto :goto_1b

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1b
    add-int/2addr v0, v3

    .line 1504
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v3, :cond_1c

    move v3, v2

    goto :goto_1c

    :cond_1c
    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hashCode()I

    move-result v3

    :goto_1c
    add-int/2addr v1, v3

    .line 1505
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 1506
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v3, 0x2

    :goto_1d
    add-int/2addr v1, v3

    .line 1507
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v0, :cond_1e

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_20

    .line 1509
    :cond_1e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_20

    .line 1510
    mul-int/lit8 v4, v1, 0x1f

    aget-object v5, v3, v0

    if-nez v5, :cond_1f

    move v3, v2

    goto :goto_1f

    :cond_1f
    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1f
    add-int v1, v4, v3

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1513
    .end local v0    # "i":I
    :cond_20
    :goto_20
    mul-int/lit8 v0, v1, 0x1f

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    add-int/2addr v0, v3

    .line 1514
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_21

    goto :goto_21

    :cond_21
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_21
    add-int/2addr v1, v2

    .line 1515
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1701
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1702
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1706
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_15

    .line 1707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    goto/16 :goto_10

    .line 1886
    :sswitch_0
    const/16 v2, 0x9a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1887
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v4, v3

    .line 1888
    .local v4, "i":I
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 1889
    .local v5, "newArray":[Ljava/lang/String;
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1890
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1891
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_0

    .line 1892
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 1893
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1891
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1896
    :cond_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 1897
    goto/16 :goto_11

    .line 1882
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1883
    goto/16 :goto_11

    .line 1878
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1879
    goto/16 :goto_11

    .line 1864
    :sswitch_3
    const/16 v2, 0x82

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1865
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v4, v3

    .line 1866
    .restart local v4    # "i":I
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 1867
    .restart local v5    # "newArray":[Ljava/lang/String;
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1868
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1869
    :goto_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_1

    .line 1870
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 1871
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1869
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1874
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 1875
    goto/16 :goto_11

    .line 1860
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1861
    goto/16 :goto_11

    .line 1855
    :sswitch_5
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1856
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1857
    goto/16 :goto_11

    .line 1851
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1852
    goto/16 :goto_11

    .line 1847
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1848
    goto/16 :goto_11

    .line 1843
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1844
    goto/16 :goto_11

    .line 1839
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1840
    goto/16 :goto_11

    .line 1821
    :sswitch_a
    const/16 v2, 0x3a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1822
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_3

    :cond_2
    array-length v3, v3

    .line 1823
    .local v3, "i":I
    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1824
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v5, :cond_3

    .line 1825
    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1827
    :cond_3
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1828
    :goto_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4

    .line 1829
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v5, v1, v3

    .line 1830
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1831
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1828
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1834
    :cond_4
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v5, v1, v3

    .line 1835
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1836
    goto/16 :goto_11

    .line 1803
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :sswitch_b
    const/16 v2, 0x32

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1804
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    array-length v3, v3

    .line 1805
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1806
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_6

    .line 1807
    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1809
    :cond_6
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1810
    :goto_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_7

    .line 1811
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1812
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1813
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1810
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1816
    :cond_7
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1817
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1818
    goto/16 :goto_11

    .line 1785
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_c
    const/16 v2, 0x2a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1786
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_7

    :cond_8
    array-length v3, v3

    .line 1787
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1788
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_9

    .line 1789
    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1791
    :cond_9
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1792
    :goto_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_a

    .line 1793
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1794
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1795
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1792
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1798
    :cond_a
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1799
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1800
    goto/16 :goto_11

    .line 1767
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_d
    const/16 v2, 0x22

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1768
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_9

    :cond_b
    array-length v3, v3

    .line 1769
    .restart local v3    # "i":I
    :goto_9
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1770
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_c

    .line 1771
    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1773
    :cond_c
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1774
    :goto_a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_d

    .line 1775
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1776
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1777
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1774
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1780
    :cond_d
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1781
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1782
    goto/16 :goto_11

    .line 1749
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_e
    const/16 v2, 0x1a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1750
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_b

    :cond_e
    array-length v3, v3

    .line 1751
    .restart local v3    # "i":I
    :goto_b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1752
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v5, :cond_f

    .line 1753
    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1755
    :cond_f
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1756
    :goto_c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_10

    .line 1757
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v5, v1, v3

    .line 1758
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1759
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1756
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1762
    :cond_10
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v5, v1, v3

    .line 1763
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1764
    goto/16 :goto_11

    .line 1731
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :sswitch_f
    const/16 v2, 0x12

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1732
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_11

    move v3, v1

    goto :goto_d

    :cond_11
    array-length v3, v3

    .line 1733
    .restart local v3    # "i":I
    :goto_d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1734
    .local v4, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_12

    .line 1735
    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1737
    :cond_12
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1738
    :goto_e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_13

    .line 1739
    new-instance v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v5, v1, v3

    .line 1740
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1741
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1738
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1744
    :cond_13
    new-instance v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v5, v1, v3

    .line 1745
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1746
    goto :goto_11

    .line 1717
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_10
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1718
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v4, v3

    .line 1719
    .local v4, "i":I
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 1720
    .restart local v5    # "newArray":[Ljava/lang/String;
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1721
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1722
    :goto_f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_14

    .line 1723
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 1724
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1722
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1727
    :cond_14
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 1728
    goto :goto_11

    .line 1704
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_11
    return-object p0

    .line 1710
    :cond_15
    :goto_10
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1712
    return-object p0

    .line 1900
    .end local v0    # "tag":I
    :cond_16
    :goto_11
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_10
        0x12 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x32 -> :sswitch_b
        0x3a -> :sswitch_a
        0x4a -> :sswitch_9
        0x52 -> :sswitch_8
        0x62 -> :sswitch_7
        0x6a -> :sswitch_6
        0x72 -> :sswitch_5
        0x7d -> :sswitch_4
        0x82 -> :sswitch_3
        0x88 -> :sswitch_2
        0x90 -> :sswitch_1
        0x9a -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1520
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1522
    .local v3, "element":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1521
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1527
    .local v3, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1526
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1530
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v0, :cond_2

    .line 1531
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1532
    .local v3, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1531
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1535
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v0, :cond_3

    .line 1536
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1537
    .local v3, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1536
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1540
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v0, :cond_4

    .line 1541
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 1542
    .restart local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1541
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1545
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v0, :cond_5

    .line 1546
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 1547
    .restart local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1546
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1550
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v0, :cond_6

    .line 1551
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_6
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 1552
    .local v3, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1551
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1555
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1556
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1558
    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1559
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1561
    :cond_8
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1562
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1564
    :cond_9
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1565
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1567
    :cond_a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v0, :cond_b

    .line 1568
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1570
    :cond_b
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_c

    .line 1571
    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1573
    :cond_c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1574
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_7
    if-ge v2, v1, :cond_d

    aget-object v3, v0, v2

    .line 1575
    .local v3, "element":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1574
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1578
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_d
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v0, :cond_e

    .line 1579
    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1581
    :cond_e
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v0, :cond_f

    .line 1582
    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1584
    :cond_f
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1585
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_8
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 1586
    .restart local v3    # "element":Ljava/lang/String;
    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1585
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1589
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_10
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1591
    return-void
.end method
