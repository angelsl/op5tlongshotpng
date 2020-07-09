.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyAndSerialized"
.end annotation


# instance fields
.field final mKey:Ljava/lang/String;

.field final mSerialized:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "serialized"    # [B

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    .line 519
    iput-object p2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    .line 520
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyAndSerialized: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serialized hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
