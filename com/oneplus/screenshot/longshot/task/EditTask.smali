.class public Lcom/oneplus/screenshot/longshot/task/EditTask;
.super Landroid/os/AsyncTask;
.source "EditTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTask"


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;Ljava/util/List;)V
    .registers 4
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    .line 19
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    .line 26
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 15
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x0

    .line 31
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 32
    const/4 v8, 0x0

    .line 33
    .local v8, "result":I
    aget-object v10, p1, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 34
    .local v7, "pos":I
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    .local v3, "cut":I
    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    .local v1, "bottom":I
    iget-object v11, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    monitor-enter v11

    .line 37
    :try_start_1c
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, "i":I
    :goto_24
    if-le v5, v7, :cond_36

    .line 38
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 39
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v8, v10

    .line 37
    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    .line 41
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_36
    add-int/lit8 v10, v1, -0x1

    sub-int v6, v10, v3

    .line 42
    .local v6, "offset":I
    if-lez v6, :cond_71

    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_71

    .line 43
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    iget-object v12, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 44
    .local v2, "cache":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 45
    .local v9, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int v4, v10, v6

    .line 46
    .local v4, "h":I
    if-lez v4, :cond_70

    .line 47
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v10, v12, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eq v2, v0, :cond_6b

    .line 49
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_6b
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catchall {:try_start_1c .. :try_end_70} :catchall_77

    .line 53
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_70
    add-int/2addr v8, v6

    .end local v2    # "cache":Landroid/graphics/Bitmap;
    .end local v4    # "h":I
    .end local v9    # "w":I
    :cond_71
    monitor-exit v11

    .line 56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    return-object v10

    .line 36
    .end local v5    # "i":I
    .end local v6    # "offset":I
    :catchall_77
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/EditTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    if-eqz v0, :cond_d

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;->onEditFinished(I)V

    .line 64
    :cond_d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/EditTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
