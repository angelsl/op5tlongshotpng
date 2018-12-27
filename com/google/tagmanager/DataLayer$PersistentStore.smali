.class interface abstract Lcom/google/tagmanager/DataLayer$PersistentStore;
.super Ljava/lang/Object;
.source "DataLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/DataLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PersistentStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;
    }
.end annotation


# virtual methods
.method public abstract clearKeysWithPrefix(Ljava/lang/String;)V
.end method

.method public abstract loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V
.end method

.method public abstract saveKeyValues(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;J)V"
        }
    .end annotation
.end method
