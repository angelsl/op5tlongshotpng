.class Lcom/google/tagmanager/Runtime$2;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/google/tagmanager/CacheFactory$CacheSizeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/CacheFactory$CacheSizeManager",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/tagmanager/Runtime$CachedMacro;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Runtime;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Runtime;)V
    .registers 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/tagmanager/Runtime$2;->this$0:Lcom/google/tagmanager/Runtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/tagmanager/Runtime$CachedMacro;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/Runtime$2;->sizeOf(Ljava/lang/String;Lcom/google/tagmanager/Runtime$CachedMacro;)I

    move-result v0

    return v0
.end method

.method public sizeOf(Ljava/lang/String;Lcom/google/tagmanager/Runtime$CachedMacro;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/tagmanager/Runtime$CachedMacro;

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/tagmanager/Runtime$CachedMacro;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
