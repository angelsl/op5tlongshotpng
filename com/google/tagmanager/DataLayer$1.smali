.class Lcom/google/tagmanager/DataLayer$1;
.super Ljava/lang/Object;
.source "DataLayer.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$PersistentStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/DataLayer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKeysWithPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .line 203
    return-void
.end method

.method public loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;->onKeyValuesLoaded(Ljava/util/List;)V

    .line 199
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public saveKeyValues(Ljava/util/List;J)V
    .registers 4
    .param p2, "lifetimeInMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;J)V"
        }
    .end annotation

    .line 194
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
