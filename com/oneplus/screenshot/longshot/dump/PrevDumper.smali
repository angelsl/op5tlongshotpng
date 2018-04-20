.class public Lcom/oneplus/screenshot/longshot/dump/PrevDumper;
.super Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.source "PrevDumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrevDumper"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "isCurr"    # Z

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;-><init>(Landroid/content/Context;IZ)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_1d

    const-string/jumbo v0, "Curr"

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;->mTag:Ljava/lang/String;

    .line 17
    return-void

    .line 16
    :cond_1d
    const-string/jumbo v0, "Last"

    goto :goto_12
.end method
