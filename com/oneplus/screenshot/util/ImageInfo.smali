.class public Lcom/oneplus/screenshot/util/ImageInfo;
.super Lcom/oneplus/screenshot/util/FileInfo;
.source "ImageInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/util/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getSuffix()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, ".jpg"

    return-object v0
.end method
