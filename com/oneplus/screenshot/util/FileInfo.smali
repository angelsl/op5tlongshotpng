.class public abstract Lcom/oneplus/screenshot/util/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEMPLATE_FILE_NAME:Ljava/lang/String; = "_%s"

.field private static final TEMPLATE_FILE_PATH:Ljava/lang/String; = "%s/%s/%s"


# instance fields
.field private mFormatter:Ljava/text/DateFormat;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mTime:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/oneplus/screenshot/util/FileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/util/FileInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mFormatter:Ljava/text/DateFormat;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mUri:Landroid/net/Uri;

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mPath:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mTime:J

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mTime:J

    .line 34
    iget-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mFormatter:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/oneplus/screenshot/util/FileInfo;->mTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "date":Ljava/lang/String;
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/util/FileInfo;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/util/FileInfo;->mName:Ljava/lang/String;

    .line 38
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/oneplus/screenshot/util/FileInfo;->mName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "%s/%s/%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/util/FileInfo;->mPath:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSuffix()Ljava/lang/String;
.end method

.method public getTime()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mTime:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/oneplus/screenshot/util/FileInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 49
    iput-object p1, p0, Lcom/oneplus/screenshot/util/FileInfo;->mUri:Landroid/net/Uri;

    .line 50
    return-void
.end method
