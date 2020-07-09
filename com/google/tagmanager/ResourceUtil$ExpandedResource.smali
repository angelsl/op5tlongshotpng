.class public Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedResource"
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

.field private final mResourceFormatVersion:I

.field private final mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "resourceFormatVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 376
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;>;"
    .local p2, "macros":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mRules:Ljava/util/List;

    .line 378
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mMacros:Ljava/util/Map;

    .line 379
    iput-object p3, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mVersion:Ljava/lang/String;

    .line 380
    iput p4, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mResourceFormatVersion:I

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/tagmanager/ResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/google/tagmanager/ResourceUtil$1;

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public static newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;
    .locals 2

    .line 384
    new-instance v0, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;-><init>(Lcom/google/tagmanager/ResourceUtil$1;)V

    return-object v0
.end method


# virtual methods
.method public getAllMacros()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mMacros:Ljava/util/Map;

    return-object v0
.end method

.method public getMacros(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mMacros:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getResourceFormatVersion()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mResourceFormatVersion:I

    return v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Macros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->mMacros:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
