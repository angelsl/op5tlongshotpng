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

    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Resource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

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
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1382
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1385
    const-string v0, ""

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
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .registers 2
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
    .registers 2
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
    .registers 4

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
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1413
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1414
    const-string v0, ""

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
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1427
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1428
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1429
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 1430
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v3, :cond_66

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v3, :cond_ee

    goto :goto_70

    :cond_66
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    :goto_70
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v3, :cond_79

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v3, :cond_ee

    goto :goto_83

    :cond_79
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    :goto_83
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v3, :cond_8c

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v3, :cond_ee

    goto :goto_96

    :cond_8c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    :goto_96
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v3, :cond_9f

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v3, :cond_ee

    goto :goto_a9

    :cond_9f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    :goto_a9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v3, :cond_b2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v3, :cond_ee

    goto :goto_bc

    :cond_b2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    :goto_bc
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_ee

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-ne v3, v4, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-ne v3, v4, :cond_ee

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_e3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_ee

    goto :goto_ed

    :cond_e3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    :goto_ed
    goto :goto_ef

    :cond_ee
    move v0, v2

    :goto_ef
    return v0
.end method

.method public getSerializedSize()I
    .registers 10

    .line 1595
    const/4 v0, 0x0

    .line 1596
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_24

    .line 1597
    const/4 v1, 0x0

    .line 1598
    .local v1, "dataSize":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    move v5, v1

    move v1, v2

    .local v1, "i$":I
    .local v5, "dataSize":I
    :goto_11
    if-ge v1, v4, :cond_1d

    aget-object v6, v3, v1

    .line 1599
    .local v6, "element":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1598
    .end local v6    # "element":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1602
    .end local v1    # "i$":I
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1d
    add-int/2addr v0, v5

    .line 1603
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v1, v1

    const/4 v3, 0x1

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 1605
    .end local v5    # "dataSize":I
    :cond_24
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v3, 0x2

    if-eqz v1, :cond_3b

    .line 1606
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v1

    .restart local v4    # "len$":I
    move v5, v0

    move v0, v2

    .local v0, "i$":I
    .local v5, "size":I
    :goto_2e
    if-ge v0, v4, :cond_3a

    aget-object v6, v1, v0

    .line 1607
    .local v6, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v3, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1606
    .end local v6    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1611
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "len$":I
    :cond_3a
    move v0, v5

    .end local v5    # "size":I
    .local v0, "size":I
    :cond_3b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v1, :cond_52

    .line 1612
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v4, v1

    .restart local v4    # "len$":I
    move v5, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v5    # "size":I
    :goto_44
    if-ge v0, v4, :cond_51

    aget-object v6, v1, v0

    .line 1613
    .local v6, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1612
    .end local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 1617
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v4    # "len$":I
    :cond_51
    move v0, v5

    .end local v5    # "size":I
    .local v0, "size":I
    :cond_52
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_69

    .line 1618
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v4, v1

    .restart local v4    # "len$":I
    move v5, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v5    # "size":I
    :goto_5b
    if-ge v0, v4, :cond_68

    aget-object v6, v1, v0

    .line 1619
    .local v6, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v7, 0x4

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1618
    .end local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 1623
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v4    # "len$":I
    :cond_68
    move v0, v5

    .end local v5    # "size":I
    .local v0, "size":I
    :cond_69
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_80

    .line 1624
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v4, v1

    .restart local v4    # "len$":I
    move v5, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v5    # "size":I
    :goto_72
    if-ge v0, v4, :cond_7f

    aget-object v6, v1, v0

    .line 1625
    .restart local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v7, 0x5

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1624
    .end local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 1629
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v4    # "len$":I
    :cond_7f
    move v0, v5

    .end local v5    # "size":I
    .local v0, "size":I
    :cond_80
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_97

    .line 1630
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v4, v1

    .restart local v4    # "len$":I
    move v5, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v5    # "size":I
    :goto_89
    if-ge v0, v4, :cond_96

    aget-object v6, v1, v0

    .line 1631
    .restart local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v7, 0x6

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1630
    .end local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 1635
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v4    # "len$":I
    :cond_96
    move v0, v5

    .end local v5    # "size":I
    .local v0, "size":I
    :cond_97
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v1, :cond_ae

    .line 1636
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v4, v1

    .restart local v4    # "len$":I
    move v5, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v5    # "size":I
    :goto_a0
    if-ge v0, v4, :cond_ad

    aget-object v6, v1, v0

    .line 1637
    .local v6, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v7, 0x7

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1636
    .end local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 1641
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v4    # "len$":I
    :cond_ad
    move v0, v5

    .end local v5    # "size":I
    .local v0, "size":I
    :cond_ae
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 1642
    const/16 v1, 0x9

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1645
    :cond_c1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 1646
    const/16 v1, 0xa

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1649
    :cond_d4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    .line 1650
    const/16 v1, 0xc

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1653
    :cond_e7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 1654
    const/16 v1, 0xd

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1657
    :cond_fa
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v1, :cond_107

    .line 1658
    const/16 v1, 0xe

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1661
    :cond_107
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_117

    .line 1662
    const/16 v1, 0xf

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1665
    :cond_117
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v1, :cond_138

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_138

    .line 1666
    const/4 v1, 0x0

    .line 1667
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .local v6, "dataSize":I
    :goto_126
    if-ge v1, v5, :cond_132

    aget-object v7, v4, v1

    .line 1668
    .local v7, "element":Ljava/lang/String;
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v6, v8

    .line 1667
    .end local v7    # "element":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_126

    .line 1671
    .end local v1    # "i$":I
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_132
    add-int/2addr v0, v6

    .line 1672
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1674
    .end local v6    # "dataSize":I
    :cond_138
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v1, :cond_145

    .line 1675
    const/16 v1, 0x11

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1678
    :cond_145
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v1, :cond_152

    .line 1679
    const/16 v1, 0x12

    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1682
    :cond_152
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v1, :cond_171

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_171

    .line 1683
    const/4 v1, 0x0

    .line 1684
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v2, "i$":I
    .restart local v5    # "len$":I
    :goto_15f
    if-ge v2, v5, :cond_16b

    aget-object v6, v4, v2

    .line 1685
    .local v6, "element":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    .line 1684
    .end local v6    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15f

    .line 1688
    .end local v2    # "i$":I
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_16b
    add-int/2addr v0, v1

    .line 1689
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v2, v2

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1691
    .end local v1    # "dataSize":I
    :cond_171
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
    .registers 7

    .line 1451
    const/16 v0, 0x11

    .line 1452
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-nez v1, :cond_b

    mul-int/2addr v0, v3

    goto :goto_2a

    .line 1454
    :cond_b
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "result":I
    :goto_d
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_29

    .line 1455
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_1c

    move v5, v2

    goto :goto_24

    :cond_1c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_24
    add-int v1, v4, v5

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1458
    .end local v0    # "i":I
    :cond_29
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_2a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v1, :cond_30

    mul-int/2addr v0, v3

    goto :goto_4f

    .line 1460
    :cond_30
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_32
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4e

    .line 1461
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_41

    move v5, v2

    goto :goto_49

    :cond_41
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_49
    add-int v1, v4, v5

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1464
    .end local v0    # "i":I
    :cond_4e
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_4f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_55

    mul-int/2addr v0, v3

    goto :goto_74

    .line 1466
    :cond_55
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_57
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v4, v4

    if-ge v0, v4, :cond_73

    .line 1467
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v0

    if-nez v5, :cond_66

    move v5, v2

    goto :goto_6e

    :cond_66
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v5

    :goto_6e
    add-int v1, v4, v5

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 1470
    .end local v0    # "i":I
    :cond_73
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_74
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v1, :cond_7a

    mul-int/2addr v0, v3

    goto :goto_99

    .line 1472
    :cond_7a
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_7c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v4, v4

    if-ge v0, v4, :cond_98

    .line 1473
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v5, v5, v0

    if-nez v5, :cond_8b

    move v5, v2

    goto :goto_93

    :cond_8b
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Serving$Property;->hashCode()I

    move-result v5

    :goto_93
    add-int v1, v4, v5

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 1476
    .end local v0    # "i":I
    :cond_98
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_99
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v1, :cond_9f

    mul-int/2addr v0, v3

    goto :goto_be

    .line 1478
    :cond_9f
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_a1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_bd

    .line 1479
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_b0

    move v5, v2

    goto :goto_b8

    :cond_b0
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v5

    :goto_b8
    add-int v1, v4, v5

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 1482
    .end local v0    # "i":I
    :cond_bd
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_be
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v1, :cond_c4

    mul-int/2addr v0, v3

    goto :goto_e3

    .line 1484
    :cond_c4
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_c6
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_e2

    .line 1485
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_d5

    move v5, v2

    goto :goto_dd

    :cond_d5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v5

    :goto_dd
    add-int v1, v4, v5

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 1488
    .end local v0    # "i":I
    :cond_e2
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_e3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v1, :cond_e9

    mul-int/2addr v0, v3

    goto :goto_108

    .line 1490
    :cond_e9
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_eb
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_107

    .line 1491
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_fa

    move v5, v2

    goto :goto_102

    :cond_fa
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v5

    :goto_102
    add-int v1, v4, v5

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 1494
    .end local v0    # "i":I
    :cond_107
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_108
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v1, :cond_10e

    mul-int/2addr v0, v3

    goto :goto_12d

    .line 1496
    :cond_10e
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_110
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v4, v4

    if-ge v0, v4, :cond_12c

    .line 1497
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v5, v5, v0

    if-nez v5, :cond_11f

    move v5, v2

    goto :goto_127

    :cond_11f
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Serving$Rule;->hashCode()I

    move-result v5

    :goto_127
    add-int v1, v4, v5

    .line 1496
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    .line 1500
    .end local v0    # "i":I
    :cond_12c
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_12d
    mul-int v1, v3, v0

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v4, :cond_135

    move v4, v2

    goto :goto_13b

    :cond_135
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_13b
    add-int/2addr v1, v4

    .line 1501
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int v0, v3, v1

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v4, :cond_144

    move v4, v2

    goto :goto_14a

    :cond_144
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_14a
    add-int/2addr v0, v4

    .line 1502
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int v1, v3, v0

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v4, :cond_153

    move v4, v2

    goto :goto_159

    :cond_153
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_159
    add-int/2addr v1, v4

    .line 1503
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int v0, v3, v1

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v4, :cond_162

    move v4, v2

    goto :goto_168

    :cond_162
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_168
    add-int/2addr v0, v4

    .line 1504
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int v1, v3, v0

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v4, :cond_171

    move v4, v2

    goto :goto_177

    :cond_171
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hashCode()I

    move-result v4

    :goto_177
    add-int/2addr v1, v4

    .line 1505
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int v0, v3, v1

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int/2addr v0, v4

    .line 1506
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int v1, v3, v0

    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v4, :cond_189

    const/4 v4, 0x1

    goto :goto_18a

    :cond_189
    const/4 v4, 0x2

    :goto_18a
    add-int/2addr v1, v4

    .line 1507
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v0, :cond_191

    mul-int/2addr v1, v3

    goto :goto_1ae

    .line 1509
    :cond_191
    move v0, v2

    .local v0, "i":I
    :goto_192
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1ae

    .line 1510
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_1a1

    move v5, v2

    goto :goto_1a9

    :cond_1a1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_1a9
    add-int v1, v4, v5

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_192

    .line 1513
    .end local v0    # "i":I
    :cond_1ae
    :goto_1ae
    mul-int v0, v3, v1

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    add-int/2addr v0, v4

    .line 1514
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/2addr v3, v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1b9

    goto :goto_1bf

    :cond_1b9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1bf
    add-int/2addr v3, v2

    .line 1515
    .end local v0    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .registers 8
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

    sparse-switch v0, :sswitch_data_2cc

    .line 1706
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_2c1

    .line 1707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    goto/16 :goto_2c1

    .line 1886
    :sswitch_15
    const/16 v2, 0x9a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1887
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v3, v3

    .line 1888
    .local v3, "i":I
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 1889
    .local v4, "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1890
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1891
    :goto_29
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3e

    .line 1892
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1893
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1891
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1896
    :cond_3e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1897
    goto/16 :goto_2ca

    .line 1882
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_48
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1883
    goto/16 :goto_2ca

    .line 1878
    :sswitch_50
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1879
    goto/16 :goto_2ca

    .line 1864
    :sswitch_58
    const/16 v2, 0x82

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1865
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v3, v3

    .line 1866
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 1867
    .restart local v4    # "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1868
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1869
    :goto_6c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_81

    .line 1870
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1871
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1869
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 1874
    :cond_81
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1875
    goto/16 :goto_2ca

    .line 1860
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_8b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1861
    goto/16 :goto_2ca

    .line 1855
    :sswitch_93
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1856
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1857
    goto/16 :goto_2ca

    .line 1851
    :sswitch_a1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1852
    goto/16 :goto_2ca

    .line 1847
    :sswitch_a9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1848
    goto/16 :goto_2ca

    .line 1843
    :sswitch_b1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1844
    goto/16 :goto_2ca

    .line 1839
    :sswitch_b9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1840
    goto/16 :goto_2ca

    .line 1821
    :sswitch_c1
    const/16 v2, 0x3a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1822
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v3, :cond_cd

    move v3, v1

    goto :goto_d0

    :cond_cd
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v3, v3

    .line 1823
    .restart local v3    # "i":I
    :goto_d0
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1824
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v5, :cond_dd

    .line 1825
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1827
    :cond_dd
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1828
    :goto_df
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_fc

    .line 1829
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

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

    goto :goto_df

    .line 1834
    :cond_fc
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v5, v1, v3

    .line 1835
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1836
    goto/16 :goto_2ca

    .line 1803
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :sswitch_10e
    const/16 v2, 0x32

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1804
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v3, :cond_11a

    move v3, v1

    goto :goto_11d

    :cond_11a
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v3

    .line 1805
    .restart local v3    # "i":I
    :goto_11d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1806
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_12a

    .line 1807
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1809
    :cond_12a
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1810
    :goto_12c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_149

    .line 1811
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

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

    goto :goto_12c

    .line 1816
    :cond_149
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1817
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1818
    goto/16 :goto_2ca

    .line 1785
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_15b
    const/16 v2, 0x2a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1786
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v3, :cond_167

    move v3, v1

    goto :goto_16a

    :cond_167
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v3

    .line 1787
    .restart local v3    # "i":I
    :goto_16a
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1788
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_177

    .line 1789
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1791
    :cond_177
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1792
    :goto_179
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_196

    .line 1793
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

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

    goto :goto_179

    .line 1798
    :cond_196
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1799
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1800
    goto/16 :goto_2ca

    .line 1767
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_1a8
    const/16 v2, 0x22

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1768
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v3, :cond_1b4

    move v3, v1

    goto :goto_1b7

    :cond_1b4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v3

    .line 1769
    .restart local v3    # "i":I
    :goto_1b7
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1770
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v5, :cond_1c4

    .line 1771
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1773
    :cond_1c4
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1774
    :goto_1c6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1e3

    .line 1775
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

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

    goto :goto_1c6

    .line 1780
    :cond_1e3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v5, v1, v3

    .line 1781
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1782
    goto/16 :goto_2ca

    .line 1749
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_1f5
    const/16 v2, 0x1a

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1750
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v3, :cond_201

    move v3, v1

    goto :goto_204

    :cond_201
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v3, v3

    .line 1751
    .restart local v3    # "i":I
    :goto_204
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1752
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v5, :cond_211

    .line 1753
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1755
    :cond_211
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1756
    :goto_213
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_230

    .line 1757
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

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

    goto :goto_213

    .line 1762
    :cond_230
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v5, v1, v3

    .line 1763
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1764
    goto/16 :goto_2ca

    .line 1731
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :sswitch_242
    const/16 v2, 0x12

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1732
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_24e

    move v3, v1

    goto :goto_251

    :cond_24e
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    .line 1733
    .restart local v3    # "i":I
    :goto_251
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1734
    .local v4, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v5, :cond_25e

    .line 1735
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1737
    :cond_25e
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1738
    :goto_260
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_27d

    .line 1739
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

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

    goto :goto_260

    .line 1744
    :cond_27d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v5, v1, v3

    .line 1745
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1746
    goto :goto_2ca

    .line 1717
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_28e
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1718
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v3, v3

    .line 1719
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 1720
    .local v4, "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1721
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1722
    :goto_2a2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2b7

    .line 1723
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1724
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1722
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a2

    .line 1727
    :cond_2b7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1728
    goto :goto_2ca

    .line 1704
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_2c0
    return-object p0

    .line 1710
    :cond_2c1
    :goto_2c1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2ca

    .line 1712
    return-object p0

    .line 1900
    .end local v0    # "tag":I
    :cond_2ca
    :goto_2ca
    goto/16 :goto_0

    :sswitch_data_2cc
    .sparse-switch
        0x0 -> :sswitch_2c0
        0xa -> :sswitch_28e
        0x12 -> :sswitch_242
        0x1a -> :sswitch_1f5
        0x22 -> :sswitch_1a8
        0x2a -> :sswitch_15b
        0x32 -> :sswitch_10e
        0x3a -> :sswitch_c1
        0x4a -> :sswitch_b9
        0x52 -> :sswitch_b1
        0x62 -> :sswitch_a9
        0x6a -> :sswitch_a1
        0x72 -> :sswitch_93
        0x7d -> :sswitch_8b
        0x82 -> :sswitch_58
        0x88 -> :sswitch_50
        0x90 -> :sswitch_48
        0x9a -> :sswitch_15
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

    .line 1344
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1520
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1521
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    move v3, v1

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_14

    aget-object v4, v0, v3

    .line 1522
    .local v4, "element":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1521
    .end local v4    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1525
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_14
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_27

    .line 1526
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_1c
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 1527
    .local v4, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1526
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1530
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_27
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v0, :cond_3a

    .line 1531
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_2f
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 1532
    .local v4, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1531
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1535
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v0, :cond_4d

    .line 1536
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_42
    if-ge v3, v2, :cond_4d

    aget-object v4, v0, v3

    .line 1537
    .local v4, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1536
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1540
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v0, :cond_60

    .line 1541
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_55
    if-ge v3, v2, :cond_60

    aget-object v4, v0, v3

    .line 1542
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1541
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 1545
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_60
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v0, :cond_73

    .line 1546
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_68
    if-ge v3, v2, :cond_73

    aget-object v4, v0, v3

    .line 1547
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1546
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 1550
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_73
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v0, :cond_86

    .line 1551
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_7b
    if-ge v3, v2, :cond_86

    aget-object v4, v0, v3

    .line 1552
    .local v4, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v5, 0x7

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1551
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 1555
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_86
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 1556
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1558
    :cond_97
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 1559
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1561
    :cond_a8
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1562
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1564
    :cond_b9
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 1565
    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1567
    :cond_ca
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v0, :cond_d5

    .line 1568
    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1570
    :cond_d5
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e3

    .line 1571
    const/16 v0, 0xf

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1573
    :cond_e3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v0, :cond_f7

    .line 1574
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_eb
    if-ge v3, v2, :cond_f7

    aget-object v4, v0, v3

    .line 1575
    .local v4, "element":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1574
    .end local v4    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    .line 1578
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_f7
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v0, :cond_102

    .line 1579
    const/16 v0, 0x11

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1581
    :cond_102
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v0, :cond_10d

    .line 1582
    const/16 v0, 0x12

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1584
    :cond_10d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v0, :cond_120

    .line 1585
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v1, "i$":I
    .restart local v2    # "len$":I
    :goto_114
    if-ge v1, v2, :cond_120

    aget-object v3, v0, v1

    .line 1586
    .local v3, "element":Ljava/lang/String;
    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1585
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    .line 1589
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_120
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1591
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
