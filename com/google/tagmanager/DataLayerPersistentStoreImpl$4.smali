.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->clearKeysWithPrefix(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

.field final synthetic val$keyPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    iput-object p2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;->val$keyPrefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;->val$keyPrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->access$200(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V

    .line 100
    return-void
.end method
