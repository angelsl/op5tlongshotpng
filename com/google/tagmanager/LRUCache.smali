.class Lcom/google/tagmanager/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"

# interfaces
.implements Lcom/google/tagmanager/Cache;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/Cache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)V
    .locals 1
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/google/tagmanager/LRUCache;, "Lcom/google/tagmanager/LRUCache<TK;TV;>;"
    .local p2, "sizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/google/tagmanager/LRUCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/tagmanager/LRUCache$1;-><init>(Lcom/google/tagmanager/LRUCache;ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)V

    iput-object v0, p0, Lcom/google/tagmanager/LRUCache;->lruCache:Landroid/util/LruCache;

    .line 32
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/google/tagmanager/LRUCache;, "Lcom/google/tagmanager/LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/tagmanager/LRUCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/tagmanager/LRUCache;, "Lcom/google/tagmanager/LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/tagmanager/LRUCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
