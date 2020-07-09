.class Lcom/google/tagmanager/CacheFactory$1;
.super Ljava/lang/Object;
.source "CacheFactory.java"

# interfaces
.implements Lcom/google/tagmanager/CacheFactory$CacheSizeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/CacheFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/CacheFactory;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/CacheFactory;)V
    .locals 0

    .line 30
    .local p0, "this":Lcom/google/tagmanager/CacheFactory$1;, "Lcom/google/tagmanager/CacheFactory.1;"
    iput-object p1, p0, Lcom/google/tagmanager/CacheFactory$1;->this$0:Lcom/google/tagmanager/CacheFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/google/tagmanager/CacheFactory$1;, "Lcom/google/tagmanager/CacheFactory.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method
