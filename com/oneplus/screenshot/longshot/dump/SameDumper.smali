.class public Lcom/oneplus/screenshot/longshot/dump/SameDumper;
.super Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.source "SameDumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SameDumper"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "isNext"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;-><init>(Landroid/content/Context;IZ)V

    .line 16
    invoke-virtual {p0, p4}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;->setTag(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Same"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
