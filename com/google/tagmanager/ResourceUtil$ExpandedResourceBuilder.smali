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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResourceFormatVersion:I

.field private final mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
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
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mVersion:Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mResourceFormatVersion:I

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/ResourceUtil$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/tagmanager/ResourceUtil$1;

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .registers 6
    .param p1, "f"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "macroName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mMacros:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 333
    .local v0, "macroList":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    if-eqz v0, :cond_22

    .line 337
    :goto_1e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0

    .line 334
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "macroList":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .restart local v0    # "macroList":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    iget-object v2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mMacros:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method public addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .registers 3
    .param p1, "r"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-object p0
.end method

.method public build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .registers 7

    .prologue
    .line 352
    new-instance v0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mRules:Ljava/util/List;

    iget-object v2, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mMacros:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mVersion:Ljava/lang/String;

    iget v4, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mResourceFormatVersion:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/tagmanager/ResourceUtil$1;)V

    return-object v0
.end method

.method public setResourceFormatVersion(I)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .registers 2
    .param p1, "resourceFormatVersion"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mResourceFormatVersion:I

    .line 348
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->mVersion:Ljava/lang/String;

    .line 343
    return-object p0
.end method
