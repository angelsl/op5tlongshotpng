.class Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
.super Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 82
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 51
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 56
    :cond_0
    return-object v0

    .line 58
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/system/ErrnoException;
    return-object v0
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .line 66
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 67
    return-object v1

    .line 69
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;I)Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 70
    .local v0, "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    .local v2, "resolver":Landroid/content/ContentResolver;
    nop

    .line 72
    :try_start_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 73
    :try_start_1
    invoke-direct {p0, v3}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v4

    .line 74
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 82
    if-eqz v3, :cond_2

    :try_start_2
    invoke-static {v1, v3}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :cond_2
    return-object v5

    .line 77
    :cond_3
    :goto_0
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 78
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_4
    invoke-super {p0, p1, v5}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :try_start_5
    invoke-static {v1, v5}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 82
    :try_start_6
    invoke-static {v1, v3}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 78
    return-object v6

    .line 77
    :catchall_0
    move-exception v6

    .end local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 79
    .restart local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_1
    move-exception v7

    :try_start_8
    invoke-static {v6, v5}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 71
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_2
    move-exception v4

    .end local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 82
    .restart local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_3
    move-exception v5

    if-eqz v3, :cond_4

    :try_start_a
    invoke-static {v4, v3}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :cond_4
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "bestFont":Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "this":Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    return-object v1
.end method
