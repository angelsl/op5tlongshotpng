.class final Lcom/google/tagmanager/DataLayer$KeyValue;
.super Ljava/lang/Object;
.source "DataLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/DataLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyValue"
.end annotation


# instance fields
.field public final mKey:Ljava/lang/String;

.field public final mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 117
    instance-of v0, p1, Lcom/google/tagmanager/DataLayer$KeyValue;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 118
    return v1

    .line 120
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/tagmanager/DataLayer$KeyValue;

    .line 121
    .local v0, "other":Lcom/google/tagmanager/DataLayer$KeyValue;
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    nop

    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
