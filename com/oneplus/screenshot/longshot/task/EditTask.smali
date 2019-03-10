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
        "Landroid/os/AsyncTask<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    .line 19
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mListener:Lcom/oneplus/screenshot/longshot/task/EditTask$OnEditListener;

    .line 26
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    .line 27
    return-void-no-barrier
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 31
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "result":I
    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 34
    .local v2, "pos":I
    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 35
    .local v4, "cut":I
    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 36
    .local v5, "bottom":I
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    monitor-enter v6

    .line 37
    :try_start_1c
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    .local v7, "i":I
    :goto_23
    if-le v7, v2, :cond_35

    .line 38
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 39
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v0, v9

    .line 37
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v7, v7, -0x1

    goto :goto_23

    .line 41
    .end local v7    # "i":I
    :cond_35
    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v7, v4

    .line 42
    .local v7, "offset":I
    if-lez v7, :cond_6b

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6b

    .line 43
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 44
    .local v3, "cache":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 45
    .local v8, "w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v7

    .line 46
    .local v9, "h":I
    if-lez v9, :cond_6a

    .line 47
    invoke-static {v3, v1, v1, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 48
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eq v3, v1, :cond_65

    .line 49
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_65
    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/task/EditTask;->mBitmaps:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6a
    add-int/2addr v0, v7

    .line 55
    .end local v3    # "cache":Landroid/graphics/Bitmap;
    .end local v7    # "offset":I
    .end local v8    # "w":I
    .end local v9    # "h":I
    :cond_6b
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_1c .. :try_end_6c} :catchall_71

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 55
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v6
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 11
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/EditTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 1

    .line 68
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Integer;

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
    return-void-no-barrier
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 11
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/EditTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void-no-barrier
.end method
