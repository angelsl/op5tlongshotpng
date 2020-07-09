.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->saveKeyValues(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

.field final synthetic val$lifetimeInMillis:J

.field final synthetic val$serializedKeysAndValues:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/util/List;J)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    iput-object p2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;->val$serializedKeysAndValues:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;->val$lifetimeInMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;->val$serializedKeysAndValues:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;->val$lifetimeInMillis:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->access$000(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/util/List;J)V

    .line 82
    return-void
.end method
