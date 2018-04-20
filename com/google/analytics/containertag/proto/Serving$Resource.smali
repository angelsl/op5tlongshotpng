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
    .registers 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Resource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

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
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1378
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1382
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1385
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1391
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1394
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1397
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1400
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1348
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1911
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

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
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1412
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1413
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1414
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1415
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1416
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1417
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1418
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1419
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1420
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    .line 1421
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1422
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1427
    if-eq p1, p0, :cond_17

    .line 1428
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 1429
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 1430
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 1427
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_17
    return v1

    .line 1428
    :cond_18
    return v2

    .line 1430
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_d3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_6d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_d9

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_7b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-eqz v3, :cond_df

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_89
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-eqz v3, :cond_e5

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_97
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v3, :cond_eb

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_a5
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_15

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_f1

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_15

    :cond_d3
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_6d

    goto/16 :goto_15

    :cond_d9
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_7b

    goto/16 :goto_15

    :cond_df
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-eqz v3, :cond_89

    goto/16 :goto_15

    :cond_e5
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-eqz v3, :cond_97

    goto/16 :goto_15

    :cond_eb
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v3, :cond_a5

    goto/16 :goto_15

    :cond_f1
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto/16 :goto_15
.end method

.method public getSerializedSize()I
    .registers 18

    .prologue
    .line 1595
    const/4 v14, 0x0

    .line 1596
    .local v14, "size":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v15, :cond_a2

    .line 1605
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v15, :cond_c8

    .line 1611
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v15, :cond_db

    .line 1617
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v15, :cond_ee

    .line 1623
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v15, :cond_101

    .line 1629
    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v15, :cond_114

    .line 1635
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v15, :cond_127

    .line 1641
    :cond_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13a

    .line 1645
    :goto_38
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_149

    .line 1649
    :goto_45
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string/jumbo v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_158

    .line 1653
    :goto_52
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_167

    .line 1657
    :goto_5f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v15, :cond_176

    .line 1661
    :goto_65
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_7c

    .line 1662
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v15

    add-int/2addr v14, v15

    .line 1665
    :cond_7c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v15, :cond_185

    .line 1674
    :cond_82
    :goto_82
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-nez v15, :cond_1aa

    .line 1678
    :goto_88
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-nez v15, :cond_1b9

    .line 1682
    :goto_8e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-nez v15, :cond_1c8

    .line 1691
    :cond_94
    :goto_94
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v15}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1692
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1693
    return v14

    .line 1596
    :cond_a2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_7

    .line 1597
    const/4 v6, 0x0

    .line 1598
    .local v6, "dataSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_b0
    if-lt v12, v13, :cond_be

    .line 1602
    add-int/lit8 v14, v6, 0x0

    .line 1603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    goto/16 :goto_7

    .line 1598
    :cond_be
    aget-object v11, v5, v12

    .line 1599
    .local v11, "element":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v6, v15

    .line 1598
    add-int/lit8 v12, v12, 0x1

    goto :goto_b0

    .line 1606
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "dataSize":I
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_c8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v4, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_ce
    if-ge v12, v13, :cond_d

    aget-object v10, v4, v12

    .line 1607
    .local v10, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v15, 0x2

    invoke-static {v15, v10}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1606
    add-int/lit8 v12, v12, 0x1

    goto :goto_ce

    .line 1612
    .end local v4    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v13, v2

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_e1
    if-ge v12, v13, :cond_13

    aget-object v8, v2, v12

    .line 1613
    .local v8, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v15, 0x3

    invoke-static {v15, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1612
    add-int/lit8 v12, v12, 0x1

    goto :goto_e1

    .line 1618
    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v8    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_ee
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v13, v1

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_f4
    if-ge v12, v13, :cond_19

    aget-object v7, v1, v12

    .line 1619
    .local v7, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v15, 0x4

    invoke-static {v15, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1618
    add-int/lit8 v12, v12, 0x1

    goto :goto_f4

    .line 1624
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v13, v1

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_107
    if-ge v12, v13, :cond_1f

    aget-object v7, v1, v12

    .line 1625
    .restart local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v15, 0x5

    invoke-static {v15, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1624
    add-int/lit8 v12, v12, 0x1

    goto :goto_107

    .line 1630
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v13, v1

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_11a
    if-ge v12, v13, :cond_25

    aget-object v7, v1, v12

    .line 1631
    .restart local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v15, 0x6

    invoke-static {v15, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1630
    add-int/lit8 v12, v12, 0x1

    goto :goto_11a

    .line 1636
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v3, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_12d
    if-ge v12, v13, :cond_2b

    aget-object v9, v3, v12

    .line 1637
    .local v9, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v15, 0x7

    invoke-static {v15, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1636
    add-int/lit8 v12, v12, 0x1

    goto :goto_12d

    .line 1642
    .end local v3    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v9    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_13a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_38

    .line 1646
    :cond_149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_45

    .line 1650
    :cond_158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_52

    .line 1654
    :cond_167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_5f

    .line 1658
    :cond_176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/16 v16, 0xe

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_65

    .line 1665
    :cond_185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_82

    .line 1666
    const/4 v6, 0x0

    .line 1667
    .restart local v6    # "dataSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v13, v5

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_193
    if-lt v12, v13, :cond_1a0

    .line 1671
    add-int/2addr v14, v6

    .line 1672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    goto/16 :goto_82

    .line 1667
    :cond_1a0
    aget-object v11, v5, v12

    .line 1668
    .restart local v11    # "element":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v6, v15

    .line 1667
    add-int/lit8 v12, v12, 0x1

    goto :goto_193

    .line 1675
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "dataSize":I
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_1aa
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_88

    .line 1679
    :cond_1b9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    const/16 v16, 0x12

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_8e

    .line 1682
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_94

    .line 1683
    const/4 v6, 0x0

    .line 1684
    .restart local v6    # "dataSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v13, v5

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_1d6
    if-lt v12, v13, :cond_1e3

    .line 1688
    add-int/2addr v14, v6

    .line 1689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    goto/16 :goto_94

    .line 1684
    :cond_1e3
    aget-object v11, v5, v12

    .line 1685
    .restart local v11    # "element":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v6, v15

    .line 1684
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d6
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1451
    const/16 v1, 0x11

    .line 1452
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v2, :cond_cb

    .line 1454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_cf

    .line 1458
    .end local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v2, :cond_e7

    .line 1460
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_eb

    .line 1464
    .end local v0    # "i":I
    :goto_17
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_103

    .line 1466
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_107

    .line 1470
    .end local v0    # "i":I
    :goto_21
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v2, :cond_11f

    .line 1472
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v2, v2

    if-lt v0, v2, :cond_123

    .line 1476
    .end local v0    # "i":I
    :goto_2b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_13b

    .line 1478
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_30
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_13f

    .line 1482
    .end local v0    # "i":I
    :goto_35
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_157

    .line 1484
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_15b

    .line 1488
    .end local v0    # "i":I
    :goto_3f
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_173

    .line 1490
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_44
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_177

    .line 1494
    .end local v0    # "i":I
    :goto_49
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v2, :cond_18f

    .line 1496
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v2, v2

    if-lt v0, v2, :cond_193

    .line 1500
    .end local v0    # "i":I
    :goto_53
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-eqz v2, :cond_1ab

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5f
    add-int v1, v4, v2

    .line 1501
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-eqz v2, :cond_1ae

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6d
    add-int v1, v4, v2

    .line 1502
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-eqz v2, :cond_1b1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7b
    add-int v1, v4, v2

    .line 1503
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-eqz v2, :cond_1b4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_89
    add-int v1, v4, v2

    .line 1504
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v2, :cond_1b7

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hashCode()I

    move-result v2

    :goto_97
    add-int v1, v4, v2

    .line 1505
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 1506
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-nez v2, :cond_1ba

    const/4 v2, 0x2

    :goto_aa
    add-int v1, v4, v2

    .line 1507
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v2, :cond_1bd

    .line 1509
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1c1

    .line 1513
    .end local v0    # "i":I
    :goto_b6
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    add-int v1, v2, v4

    .line 1514
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_c8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_c8
    add-int v1, v2, v3

    .line 1515
    return v1

    .line 1452
    :cond_cb
    const/16 v1, 0x20f

    goto/16 :goto_d

    .line 1455
    .restart local v0    # "i":I
    :cond_cf
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_df
    add-int v1, v4, v2

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_e5
    move v2, v3

    .line 1455
    goto :goto_df

    .line 1458
    .end local v0    # "i":I
    :cond_e7
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_17

    .line 1461
    .restart local v0    # "i":I
    :cond_eb
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_fb
    add-int v1, v4, v2

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_101
    move v2, v3

    .line 1461
    goto :goto_fb

    .line 1464
    .end local v0    # "i":I
    :cond_103
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_21

    .line 1467
    .restart local v0    # "i":I
    :cond_107
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_11d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_117
    add-int v1, v4, v2

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1c

    :cond_11d
    move v2, v3

    .line 1467
    goto :goto_117

    .line 1470
    .end local v0    # "i":I
    :cond_11f
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_2b

    .line 1473
    .restart local v0    # "i":I
    :cond_123
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    if-eqz v2, :cond_139

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Property;->hashCode()I

    move-result v2

    :goto_133
    add-int v1, v4, v2

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    :cond_139
    move v2, v3

    .line 1473
    goto :goto_133

    .line 1476
    .end local v0    # "i":I
    :cond_13b
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_35

    .line 1479
    .restart local v0    # "i":I
    :cond_13f
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_155

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    :goto_14f
    add-int v1, v4, v2

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30

    :cond_155
    move v2, v3

    .line 1479
    goto :goto_14f

    .line 1482
    .end local v0    # "i":I
    :cond_157
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_3f

    .line 1485
    .restart local v0    # "i":I
    :cond_15b
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_171

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    :goto_16b
    add-int v1, v4, v2

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3a

    :cond_171
    move v2, v3

    .line 1485
    goto :goto_16b

    .line 1488
    .end local v0    # "i":I
    :cond_173
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_49

    .line 1491
    .restart local v0    # "i":I
    :cond_177
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_18d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    :goto_187
    add-int v1, v4, v2

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_44

    :cond_18d
    move v2, v3

    .line 1491
    goto :goto_187

    .line 1494
    .end local v0    # "i":I
    :cond_18f
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_53

    .line 1497
    .restart local v0    # "i":I
    :cond_193
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1a9

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Rule;->hashCode()I

    move-result v2

    :goto_1a3
    add-int v1, v4, v2

    .line 1496
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4e

    :cond_1a9
    move v2, v3

    .line 1497
    goto :goto_1a3

    .end local v0    # "i":I
    :cond_1ab
    move v2, v3

    .line 1500
    goto/16 :goto_5f

    :cond_1ae
    move v2, v3

    .line 1501
    goto/16 :goto_6d

    :cond_1b1
    move v2, v3

    .line 1502
    goto/16 :goto_7b

    :cond_1b4
    move v2, v3

    .line 1503
    goto/16 :goto_89

    :cond_1b7
    move v2, v3

    .line 1504
    goto/16 :goto_97

    .line 1506
    :cond_1ba
    const/4 v2, 0x1

    goto/16 :goto_aa

    .line 1507
    :cond_1bd
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_b6

    .line 1510
    .restart local v0    # "i":I
    :cond_1c1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1d7

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1d1
    add-int v1, v4, v2

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b1

    :cond_1d7
    move v2, v3

    .line 1510
    goto :goto_1d1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .registers 13
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1701
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v7

    .line 1702
    .local v7, "tag":I
    sparse-switch v7, :sswitch_data_2d0

    .line 1706
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v9, :cond_16

    .line 1710
    :goto_c
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v9, p1, v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1712
    return-object p0

    .line 1704
    :sswitch_15
    return-object p0

    .line 1707
    :cond_16
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 1717
    :sswitch_1e
    const/16 v9, 0xa

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1718
    .local v0, "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v1, v9

    .line 1719
    .local v1, "i":I
    add-int v9, v1, v0

    new-array v6, v9, [Ljava/lang/String;

    .line 1720
    .local v6, "newArray":[Ljava/lang/String;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v9, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1721
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1722
    :goto_32
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_42

    .line 1727
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    goto :goto_1

    .line 1723
    :cond_42
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1724
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1722
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1731
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Ljava/lang/String;
    :sswitch_50
    const/16 v9, 0x12

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1732
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v9, :cond_7f

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v9

    .line 1733
    .restart local v1    # "i":I
    :goto_5d
    add-int v9, v1, v0

    new-array v5, v9, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1734
    .local v5, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v9, :cond_81

    .line 1737
    :goto_65
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1738
    :goto_67
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_87

    .line 1744
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v10, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v10}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v10, v9, v1

    .line 1745
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_7f
    move v1, v8

    .line 1732
    goto :goto_5d

    .line 1735
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_81
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v9, v8, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_65

    .line 1739
    :cond_87
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v10, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v10}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v10, v9, v1

    .line 1740
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1741
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1738
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 1749
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_9d
    const/16 v9, 0x1a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1750
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v9, :cond_cd

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v1, v9

    .line 1751
    .restart local v1    # "i":I
    :goto_aa
    add-int v9, v1, v0

    new-array v3, v9, [Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1752
    .local v3, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v9, :cond_cf

    .line 1755
    :goto_b2
    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1756
    :goto_b4
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_d5

    .line 1762
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v10, v9, v1

    .line 1763
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :cond_cd
    move v1, v8

    .line 1750
    goto :goto_aa

    .line 1753
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :cond_cf
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v9, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b2

    .line 1757
    :cond_d5
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v10, v9, v1

    .line 1758
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1759
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1756
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 1767
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :sswitch_eb
    const/16 v9, 0x22

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1768
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v9, :cond_11b

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v9

    .line 1769
    .restart local v1    # "i":I
    :goto_f8
    add-int v9, v1, v0

    new-array v2, v9, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1770
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v9, :cond_11d

    .line 1773
    :goto_100
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1774
    :goto_102
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_123

    .line 1780
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1781
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_11b
    move v1, v8

    .line 1768
    goto :goto_f8

    .line 1771
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_11d
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v9, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_100

    .line 1775
    :cond_123
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1776
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1777
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1774
    add-int/lit8 v1, v1, 0x1

    goto :goto_102

    .line 1785
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_139
    const/16 v9, 0x2a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1786
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v9, :cond_169

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v9

    .line 1787
    .restart local v1    # "i":I
    :goto_146
    add-int v9, v1, v0

    new-array v2, v9, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1788
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v9, :cond_16b

    .line 1791
    :goto_14e
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1792
    :goto_150
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_171

    .line 1798
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1799
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_169
    move v1, v8

    .line 1786
    goto :goto_146

    .line 1789
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_16b
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v9, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14e

    .line 1793
    :cond_171
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1794
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1795
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1792
    add-int/lit8 v1, v1, 0x1

    goto :goto_150

    .line 1803
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_187
    const/16 v9, 0x32

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1804
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v9, :cond_1b7

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v9

    .line 1805
    .restart local v1    # "i":I
    :goto_194
    add-int v9, v1, v0

    new-array v2, v9, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1806
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v9, :cond_1b9

    .line 1809
    :goto_19c
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1810
    :goto_19e
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_1bf

    .line 1816
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1817
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_1b7
    move v1, v8

    .line 1804
    goto :goto_194

    .line 1807
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_1b9
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v9, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19c

    .line 1811
    :cond_1bf
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1812
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1813
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1810
    add-int/lit8 v1, v1, 0x1

    goto :goto_19e

    .line 1821
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_1d5
    const/16 v9, 0x3a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1822
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v9, :cond_205

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v1, v9

    .line 1823
    .restart local v1    # "i":I
    :goto_1e2
    add-int v9, v1, v0

    new-array v4, v9, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1824
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v9, :cond_207

    .line 1827
    :goto_1ea
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1828
    :goto_1ec
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_20d

    .line 1834
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v10, v9, v1

    .line 1835
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_205
    move v1, v8

    .line 1822
    goto :goto_1e2

    .line 1825
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_207
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1ea

    .line 1829
    :cond_20d
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v10, v9, v1

    .line 1830
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1831
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1828
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ec

    .line 1839
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :sswitch_223
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    goto/16 :goto_1

    .line 1843
    :sswitch_22b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    goto/16 :goto_1

    .line 1847
    :sswitch_233
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 1851
    :sswitch_23b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    goto/16 :goto_1

    .line 1855
    :sswitch_243
    new-instance v9, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v9}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1856
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .line 1860
    :sswitch_251
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v9

    iput v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    goto/16 :goto_1

    .line 1864
    :sswitch_259
    const/16 v9, 0x82

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1865
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v1, v9

    .line 1866
    .restart local v1    # "i":I
    add-int v9, v1, v0

    new-array v6, v9, [Ljava/lang/String;

    .line 1867
    .restart local v6    # "newArray":[Ljava/lang/String;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v9, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1868
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1869
    :goto_26d
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_27e

    .line 1874
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    goto/16 :goto_1

    .line 1870
    :cond_27e
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1871
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1869
    add-int/lit8 v1, v1, 0x1

    goto :goto_26d

    .line 1878
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Ljava/lang/String;
    :sswitch_28c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    goto/16 :goto_1

    .line 1882
    :sswitch_294
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    goto/16 :goto_1

    .line 1886
    :sswitch_29c
    const/16 v9, 0x9a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1887
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v1, v9

    .line 1888
    .restart local v1    # "i":I
    add-int v9, v1, v0

    new-array v6, v9, [Ljava/lang/String;

    .line 1889
    .restart local v6    # "newArray":[Ljava/lang/String;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v9, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1890
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1891
    :goto_2b0
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_2c1

    .line 1896
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    goto/16 :goto_1

    .line 1892
    :cond_2c1
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1893
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1891
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b0

    .line 1702
    nop

    :sswitch_data_2d0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_1e
        0x12 -> :sswitch_50
        0x1a -> :sswitch_9d
        0x22 -> :sswitch_eb
        0x2a -> :sswitch_139
        0x32 -> :sswitch_187
        0x3a -> :sswitch_1d5
        0x4a -> :sswitch_223
        0x52 -> :sswitch_22b
        0x62 -> :sswitch_233
        0x6a -> :sswitch_23b
        0x72 -> :sswitch_243
        0x7d -> :sswitch_251
        0x82 -> :sswitch_259
        0x88 -> :sswitch_28c
        0x90 -> :sswitch_294
        0x9a -> :sswitch_29c
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .registers 3
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 16
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v12, :cond_70

    .line 1525
    :cond_4
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v12, :cond_7f

    .line 1530
    :cond_8
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v12, :cond_8e

    .line 1535
    :cond_c
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v12, :cond_9d

    .line 1540
    :cond_10
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v12, :cond_ac

    .line 1545
    :cond_14
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v12, :cond_bb

    .line 1550
    :cond_18
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v12, :cond_ca

    .line 1555
    :cond_1c
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d9

    .line 1558
    :goto_27
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e2

    .line 1561
    :goto_32
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string/jumbo v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_eb

    .line 1564
    :goto_3d
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f4

    .line 1567
    :goto_48
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v12, :cond_fd

    .line 1570
    :goto_4c
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_5a

    .line 1571
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v13, 0xf

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1573
    :cond_5a
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v12, :cond_106

    .line 1578
    :cond_5e
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-nez v12, :cond_116

    .line 1581
    :goto_62
    iget-boolean v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-nez v12, :cond_11f

    .line 1584
    :goto_66
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-nez v12, :cond_128

    .line 1589
    :cond_6a
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v12, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1591
    return-void

    .line 1521
    :cond_70
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_74
    if-ge v10, v11, :cond_4

    aget-object v9, v4, v10

    .line 1522
    .local v9, "element":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {p1, v12, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1521
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    .line 1526
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_7f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v3, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v11, v3

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_83
    if-ge v10, v11, :cond_8

    aget-object v8, v3, v10

    .line 1527
    .local v8, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v12, 0x2

    invoke-virtual {p1, v12, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1526
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    .line 1531
    .end local v3    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v8    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_8e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v11, v1

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_92
    if-ge v10, v11, :cond_c

    aget-object v6, v1, v10

    .line 1532
    .local v6, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v12, 0x3

    invoke-virtual {p1, v12, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1531
    add-int/lit8 v10, v10, 0x1

    goto :goto_92

    .line 1536
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_9d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v11, v0

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_a1
    if-ge v10, v11, :cond_10

    aget-object v5, v0, v10

    .line 1537
    .local v5, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v12, 0x4

    invoke-virtual {p1, v12, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1536
    add-int/lit8 v10, v10, 0x1

    goto :goto_a1

    .line 1541
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_ac
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v11, v0

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_b0
    if-ge v10, v11, :cond_14

    aget-object v5, v0, v10

    .line 1542
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v12, 0x5

    invoke-virtual {p1, v12, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1541
    add-int/lit8 v10, v10, 0x1

    goto :goto_b0

    .line 1546
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_bb
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v11, v0

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_bf
    if-ge v10, v11, :cond_18

    aget-object v5, v0, v10

    .line 1547
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v12, 0x6

    invoke-virtual {p1, v12, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1546
    add-int/lit8 v10, v10, 0x1

    goto :goto_bf

    .line 1551
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_ca
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v11, v2

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_ce
    if-ge v10, v11, :cond_1c

    aget-object v7, v2, v10

    .line 1552
    .local v7, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v12, 0x7

    invoke-virtual {p1, v12, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1551
    add-int/lit8 v10, v10, 0x1

    goto :goto_ce

    .line 1556
    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_d9
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const/16 v13, 0x9

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_27

    .line 1559
    :cond_e2
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const/16 v13, 0xa

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_32

    .line 1562
    :cond_eb
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const/16 v13, 0xc

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_3d

    .line 1565
    :cond_f4
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const/16 v13, 0xd

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_48

    .line 1568
    :cond_fd
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/16 v13, 0xe

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_4c

    .line 1574
    :cond_106
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v11, v4

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_10a
    if-ge v10, v11, :cond_5e

    aget-object v9, v4, v10

    .line 1575
    .restart local v9    # "element":Ljava/lang/String;
    const/16 v12, 0x10

    invoke-virtual {p1, v12, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1574
    add-int/lit8 v10, v10, 0x1

    goto :goto_10a

    .line 1579
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_116
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    const/16 v13, 0x11

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto/16 :goto_62

    .line 1582
    :cond_11f
    iget-boolean v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    const/16 v13, 0x12

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto/16 :goto_66

    .line 1585
    :cond_128
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v11, v4

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_12c
    if-ge v10, v11, :cond_6a

    aget-object v9, v4, v10

    .line 1586
    .restart local v9    # "element":Ljava/lang/String;
    const/16 v12, 0x13

    invoke-virtual {p1, v12, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1585
    add-int/lit8 v10, v10, 0x1

    goto :goto_12c
.end method
