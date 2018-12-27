.class public abstract Lcom/oneplus/screenshot/longshot/task/JoinTask;
.super Landroid/os/AsyncTask;
.source "JoinTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.JoinTask"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mIndex:I

.field protected mIsNext:Z

.field protected mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field protected mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mListener:Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;

.field protected mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V
    .registers 8
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "isNext"    # Z

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 27
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 28
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mListener:Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;

    .line 29
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 30
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    .line 31
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mContext:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIndex:I

    .line 33
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIsNext:Z

    .line 39
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mListener:Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;

    .line 40
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 41
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mContext:Landroid/content/Context;

    .line 42
    iput p4, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIndex:I

    .line 43
    iput-boolean p5, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIsNext:Z

    .line 44
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    .line 45
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->createFullDumper()V

    .line 46
    return-void
.end method

.method private createFullDumper()V
    .registers 6

    .line 152
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FULL:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 153
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/FullDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIndex:I

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIsNext:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/FullDumper;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 154
    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/FullDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIndex:I

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mIsNext:Z

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/FullDumper;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 156
    :cond_24
    return-void
.end method

.method private join(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .registers 6
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 130
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    if-nez p2, :cond_6

    goto :goto_4d

    .line 134
    :cond_6
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_45

    .line 138
    :cond_13
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_2d

    .line 139
    const-string v1, "Longshot.JoinTask"

    const-string v2, "join fail 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v0

    .line 142
    :cond_2d
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v1, :cond_36

    .line 143
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Z)V

    .line 145
    :cond_36
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_40

    .line 146
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Z)V

    .line 148
    :cond_40
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z

    move-result v0

    return v0

    .line 135
    :cond_45
    :goto_45
    const-string v1, "Longshot.JoinTask"

    const-string v2, "join fail 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v0

    .line 131
    :cond_4d
    :goto_4d
    const-string v1, "Longshot.JoinTask"

    const-string v2, "join fail 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0
.end method


# virtual methods
.method protected checkMatcher()Z
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected abstract createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "last":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    const/4 v1, 0x0

    .line 61
    .local v1, "curr":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v2

    .line 63
    :try_start_5
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    move-object v1, v3

    .line 64
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :try_end_16
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_16} :catch_1a
    .catchall {:try_start_5 .. :try_end_16} :catchall_18

    move-object v0, v3

    .line 66
    goto :goto_1b

    .line 67
    :catchall_18
    move-exception v3

    goto :goto_3c

    .line 65
    :catch_1a
    move-exception v3

    .line 67
    :goto_1b
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_18

    .line 68
    const-string v2, "JoinTask.joinstart"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->join(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 70
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 71
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 73
    :cond_30
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->onFailed(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    .line 74
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 75
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 67
    :goto_3c
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_18

    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 1

    .line 93
    return-void
.end method

.method protected onFailed(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .registers 5
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 99
    const-string v0, "Longshot.JoinTask"

    const-string v1, "onFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz p1, :cond_17

    .line 101
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_12

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    :cond_12
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1, p1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 107
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_17
    if-eqz p2, :cond_27

    .line 108
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_22

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    :cond_22
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1, p2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 114
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_27
    return-void
.end method

.method protected abstract onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 80
    const-string v0, "JoinTask.joinend"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mListener:Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;

    if-eqz v0, :cond_1a

    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mListener:Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;->onJoinSuccess()V

    goto :goto_1a

    .line 85
    :cond_15
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mListener:Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;->onJoinFailed()V

    .line 88
    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 89
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method