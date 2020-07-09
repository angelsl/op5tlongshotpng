.class public Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedResourceBuilder"
.end annotation


# instance fields
.field private final mMacros:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResourceFormatVersion:I

.field private final mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mRules:Ljava/util/List;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mMacros:Ljava/util/Map;

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mVersion:Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mResourceFormatVersion:I

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/ResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/ResourceUtil$1;

    .line 312
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .locals 3
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 331
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "macroName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mMacros:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 333
    .local v1, "macroList":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    if-nez v1, :cond_0

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 335
    iget-object v2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mMacros:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0
.end method

.method public addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .locals 1
    .param p1, "r"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 326
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-object p0
.end method

.method public build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .locals 7

    .line 352
    new-instance v6, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mRules:Ljava/util/List;

    iget-object v2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mMacros:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mVersion:Ljava/lang/String;

    iget v4, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mResourceFormatVersion:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/tagmanager/ResourceUtil$1;)V

    return-object v6
.end method

.method public setResourceFormatVersion(I)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .locals 0
    .param p1, "resourceFormatVersion"    # I

    .line 347
    iput p1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mResourceFormatVersion:I

    .line 348
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mVersion:Ljava/lang/String;

    .line 343
    return-object p0
.end method
