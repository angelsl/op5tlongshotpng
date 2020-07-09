.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

.field final synthetic val$callback:Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    iput-object p2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;->val$callback:Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;->val$callback:Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    invoke-static {v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->access$100(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;->onKeyValuesLoaded(Ljava/util/List;)V

    .line 91
    return-void
.end method
