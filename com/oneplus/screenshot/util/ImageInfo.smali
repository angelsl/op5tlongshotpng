.class public Lcom/oneplus/screenshot/util/ImageInfo;
.super Lcom/oneplus/screenshot/util/FileInfo;
.source "ImageInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/util/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getSuffix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    const-string/jumbo v0, ".jpg"

    return-object v0
.end method
