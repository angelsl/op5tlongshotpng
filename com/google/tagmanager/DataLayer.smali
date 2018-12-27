.class public Lcom/google/tagmanager/DataLayer;
.super Ljava/lang/Object;
.source "DataLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DataLayer$PersistentStore;,
        Lcom/google/tagmanager/DataLayer$KeyValue;,
        Lcom/google/tagmanager/DataLayer$Listener;
    }
.end annotation


# static fields
.field static final LIFETIME_KEY:Ljava/lang/String; = "gtm.lifetime"

.field static final LIFETIME_KEY_COMPONENTS:[Ljava/lang/String;

.field private static final LIFETIME_PATTERN:Ljava/util/regex/Pattern;

.field static final MAX_QUEUE_DEPTH:I = 0x1f4

.field public static final OBJECT_NOT_PRESENT:Ljava/lang/Object;


# instance fields
.field private final mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/tagmanager/DataLayer$Listener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

.field private final mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

.field private final mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mUpdateQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    .line 168
    const-string v0, "gtm.lifetime"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayer;->LIFETIME_KEY_COMPONENTS:[Ljava/lang/String;

    .line 170
    const-string v0, "(\\d+)\\s*([smhd]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayer;->LIFETIME_PATTERN:Ljava/util/regex/Pattern;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 191
    new-instance v0, Lcom/google/tagmanager/DataLayer$1;

    invoke-direct {v0}, Lcom/google/tagmanager/DataLayer$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayer;-><init>(Lcom/google/tagmanager/DataLayer$PersistentStore;)V

    .line 204
    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/DataLayer$PersistentStore;)V
    .registers 4
    .param p1, "persistentStore"    # Lcom/google/tagmanager/DataLayer$PersistentStore;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    .line 211
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    .line 213
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 214
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    .line 215
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

    .line 216
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayer;->loadSavedMaps()V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/DataLayer;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "x1"    # Ljava/util/Map;

    .line 79
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->pushWithoutWaitingForSaved(Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/google/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayer;

    .line 79
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private flattenMap(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .line 342
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    const-string v1, ""

    invoke-direct {p0, p1, v1, v0}, Lcom/google/tagmanager/DataLayer;->flattenMapHelper(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    .line 344
    return-object v0
.end method

.method private flattenMapHelper(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9
    .param p2, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 349
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p3, "accum":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 350
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_25

    const-string v3, ""

    goto :goto_27

    :cond_25
    const-string v3, "."

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "fullKey":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_47

    .line 353
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 354
    .local v3, "subMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, v3, v2, p3}, Lcom/google/tagmanager/DataLayer;->flattenMapHelper(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    .line 355
    .end local v3    # "subMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_5b

    .line 356
    :cond_47
    const-string v3, "gtm.lifetime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 357
    new-instance v3, Lcom/google/tagmanager/DataLayer$KeyValue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/tagmanager/DataLayer$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "fullKey":Ljava/lang/String;
    :cond_5b
    :goto_5b
    goto :goto_8

    .line 361
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5c
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getLifetimeObject(Ljava/util/Map;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 316
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v0, p1

    .line 317
    .local v0, "current":Ljava/lang/Object;
    sget-object v1, Lcom/google/tagmanager/DataLayer;->LIFETIME_KEY_COMPONENTS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 318
    .local v4, "component":Ljava/lang/String;
    instance-of v5, v0, Ljava/util/Map;

    if-nez v5, :cond_f

    .line 319
    const/4 v5, 0x0

    return-object v5

    .line 322
    :cond_f
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 323
    .local v5, "currentAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "currentAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 325
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_19
    return-object v0
.end method

.method private getLifetimeValue(Ljava/util/Map;)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 305
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->getLifetimeObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "lifetimeObject":Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 307
    const/4 v1, 0x0

    return-object v1

    .line 309
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/DataLayer;->parseLifetime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static varargs listOf([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p0, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_11

    .line 490
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 492
    .end local v1    # "i":I
    :cond_11
    return-object v0
.end method

.method private loadSavedMaps()V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    new-instance v1, Lcom/google/tagmanager/DataLayer$2;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/DataLayer$2;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-interface {v0, v1}, Lcom/google/tagmanager/DataLayer$PersistentStore;->loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V

    .line 289
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs mapOf([Ljava/lang/Object;)Ljava/util/Map;
    .registers 5
    .param p0, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 468
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1b

    .line 471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 473
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 475
    .end local v1    # "i":I
    :cond_1a
    return-object v0

    .line 469
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected even number of key-value pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyListeners(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/DataLayer$Listener;

    .line 511
    .local v1, "listener":Lcom/google/tagmanager/DataLayer$Listener;
    invoke-interface {v1, p1}, Lcom/google/tagmanager/DataLayer$Listener;->changed(Ljava/util/Map;)V

    .line 512
    .end local v1    # "listener":Lcom/google/tagmanager/DataLayer$Listener;
    goto :goto_a

    .line 513
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1a
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static parseLifetime(Ljava/lang/String;)Ljava/lang/Long;
    .registers 12
    .param p0, "lifetimeString"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 366
    sget-object v0, Lcom/google/tagmanager/DataLayer;->LIFETIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 367
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown _lifetime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 369
    return-object v2

    .line 371
    :cond_22
    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 373
    .local v5, "number":J
    const/4 v1, 0x1

    :try_start_26
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2e} :catch_30

    move-wide v5, v7

    .line 376
    goto :goto_45

    .line 374
    :catch_30
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal number in _lifetime value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 377
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_45
    cmp-long v1, v5, v3

    if-gtz v1, :cond_5e

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-positive _lifetime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 379
    return-object v2

    .line 382
    :cond_5e
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "unitString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6e

    .line 386
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 388
    :cond_6e
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x64

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x3c

    if-eq v3, v4, :cond_b1

    const/16 v4, 0x68

    if-eq v3, v4, :cond_a9

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_a2

    const/16 v4, 0x73

    if-eq v3, v4, :cond_9c

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown units in _lifetime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 399
    return-object v2

    .line 390
    :cond_9c
    mul-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 392
    :cond_a2
    mul-long/2addr v7, v5

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 394
    :cond_a9
    mul-long/2addr v7, v5

    mul-long/2addr v7, v9

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 396
    :cond_b1
    mul-long/2addr v7, v5

    mul-long/2addr v7, v9

    mul-long/2addr v7, v9

    const-wide/16 v2, 0x18

    mul-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private processQueuedUpdates()V
    .registers 5

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "numUpdatesProcessed":I
    :goto_1
    iget-object v1, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v2, v1

    .local v2, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v1, :cond_23

    .line 408
    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayer;->processUpdate(Ljava/util/Map;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_16

    .end local v2    # "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_1

    .line 410
    .restart local v2    # "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_16
    iget-object v1, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 411
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Seems like an infinite loop of pushing to the data layer"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_23
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private processUpdate(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    monitor-enter v0

    .line 419
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 420
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lcom/google/tagmanager/DataLayer;->mergeMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 421
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_b

    .line 422
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_28

    .line 423
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->notifyListeners(Ljava/util/Map;)V

    .line 424
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 422
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private pushWithoutWaitingForSaved(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 267
    :try_start_5
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 272
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayer;->processQueuedUpdates()V

    .line 274
    :cond_16
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->savePersistentlyIfNeeded(Ljava/util/Map;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_20

    .line 276
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    nop

    .line 278
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 276
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private savePersistentlyIfNeeded(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->getLifetimeValue(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    .line 293
    .local v0, "lifetime":Ljava/lang/Long;
    if-nez v0, :cond_7

    .line 294
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 296
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->flattenMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "flattenedMap":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    const-string v2, "gtm.lifetime"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Lcom/google/tagmanager/DataLayer$PersistentStore;->saveKeyValues(Ljava/util/List;J)V

    .line 299
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method clearPersistentKeysWithPrefix(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/DataLayer;->push(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/DataLayer$PersistentStore;->clearKeysWithPrefix(Ljava/lang/String;)V

    .line 333
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v1, v0

    .line 535
    .local v1, "target":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_24

    .line 537
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 538
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    aget-object v5, v2, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    move-object v1, v4

    .line 536
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 541
    .end local v3    # "i":I
    :cond_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    monitor-enter v0

    .line 437
    :try_start_3
    iget-object v1, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    .line 438
    .local v1, "target":Ljava/lang/Object;
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "split":[Ljava/lang/String;
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_e
    if-ge v5, v4, :cond_28

    aget-object v6, v3, v5

    .line 440
    .local v6, "s":Ljava/lang/String;
    instance-of v7, v1, Ljava/util/Map;

    const/4 v8, 0x0

    if-nez v7, :cond_19

    .line 441
    monitor-exit v0

    return-object v8

    .line 444
    :cond_19
    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    .line 445
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 446
    .local v9, "value":Ljava/lang/Object;
    if-nez v9, :cond_24

    .line 447
    monitor-exit v0

    return-object v8

    .line 449
    :cond_24
    move-object v1, v9

    .line 439
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9    # "value":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 451
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_28
    monitor-exit v0

    return-object v1

    .line 452
    .end local v1    # "target":Ljava/lang/Object;
    .end local v2    # "split":[Ljava/lang/String;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method mergeList(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 592
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_f
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 595
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 596
    .local v1, "fromValue":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3b

    .line 597
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-nez v2, :cond_2e

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_2e
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 603
    .local v2, "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 604
    .local v3, "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v2, v3}, Lcom/google/tagmanager/DataLayer;->mergeList(Ljava/util/List;Ljava/util/List;)V

    .line 605
    .end local v2    # "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_63

    :cond_3b
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_5c

    .line 606
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-nez v2, :cond_4f

    .line 607
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_4f
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 612
    .local v2, "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 613
    .local v3, "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v2, v3}, Lcom/google/tagmanager/DataLayer;->mergeMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 614
    .end local v2    # "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_63

    :cond_5c
    sget-object v2, Lcom/google/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    if-eq v1, v2, :cond_63

    .line 615
    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 594
    .end local v1    # "fromValue":Ljava/lang/Object;
    :cond_63
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 618
    .end local v0    # "index":I
    :cond_66
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method mergeMap(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 555
    .local p1, "from":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p2, "to":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 556
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 557
    .local v2, "fromValue":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_37

    .line 558
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/List;

    if-nez v3, :cond_2a

    .line 559
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_2a
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 564
    .local v3, "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 565
    .local v4, "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v3, v4}, Lcom/google/tagmanager/DataLayer;->mergeList(Ljava/util/List;Ljava/util/List;)V

    .line 566
    .end local v3    # "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_5b

    :cond_37
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_58

    .line 567
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-nez v3, :cond_4b

    .line 568
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_4b
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    .line 573
    .local v3, "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 574
    .local v4, "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v3, v4}, Lcom/google/tagmanager/DataLayer;->mergeMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 575
    .end local v3    # "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_5b

    .line 576
    :cond_58
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "fromValue":Ljava/lang/Object;
    :goto_5b
    goto :goto_8

    .line 579
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5c
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 225
    .local v0, "expanded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 226
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public push(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 258
    goto :goto_c

    .line 252
    :catch_6
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "DataLayer.push: unexpected InterruptedException"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 259
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_c
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->pushWithoutWaitingForSaved(Ljava/util/Map;)V

    .line 260
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method registerListener(Lcom/google/tagmanager/DataLayer$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/tagmanager/DataLayer$Listener;

    .line 499
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method unregisterListener(Lcom/google/tagmanager/DataLayer$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/tagmanager/DataLayer$Listener;

    .line 506
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
