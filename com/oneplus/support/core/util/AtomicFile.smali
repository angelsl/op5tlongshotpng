.class public Lcom/oneplus/support/core/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "baseName"    # Ljava/io/File;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    .line 56
    return-void
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .param p0, "stream"    # Ljava/io/FileOutputStream;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 214
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v0, 0x1

    return v0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 73
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-static {p1}, Lcom/oneplus/support/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 149
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 150
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 151
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "failWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-static {p1}, Lcom/oneplus/support/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 132
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 133
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "finishWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 174
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 176
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .locals 7
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/oneplus/support/core/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 187
    .local v0, "stream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 188
    .local v1, "pos":I
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 189
    .local v2, "avail":I
    new-array v3, v2, [B

    .line 191
    .local v3, "data":[B
    :goto_0
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .local v4, "amt":I
    if-gtz v4, :cond_0

    .line 197
    nop

    .line 208
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 197
    return-object v3

    .line 199
    :cond_0
    add-int/2addr v1, v4

    .line 200
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v5

    move v2, v5

    .line 201
    array-length v5, v3

    sub-int/2addr v5, v1

    if-le v2, v5, :cond_1

    .line 202
    add-int v5, v1, v2

    new-array v5, v5, [B

    .line 203
    .local v5, "newData":[B
    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    move-object v3, v5

    .line 206
    .end local v4    # "amt":I
    .end local v5    # "newData":[B
    :cond_1
    goto :goto_0

    .line 208
    .end local v1    # "pos":I
    .end local v2    # "avail":I
    .end local v3    # "data":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 6
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t rename file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to backup file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomicFile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 107
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v0, "str":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 108
    .end local v0    # "str":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v1, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 110
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .local v2, "str":Ljava/io/FileOutputStream;
    move-object v0, v2

    .line 119
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "str":Ljava/io/FileOutputStream;
    .local v0, "str":Ljava/io/FileOutputStream;
    :goto_1
    return-object v0

    .line 115
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "parent":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e2":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    .end local v2    # "e2":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/support/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
