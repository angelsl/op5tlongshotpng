.class public Lcom/oneplus/screenshot/longshot/task/StitchOneTask;
.super Lcom/oneplus/screenshot/longshot/task/StitchOverTask;
.source "StitchOneTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOneTask"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/task/StitchOverTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 1
    .param p1, "last"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/StitchOneTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x1

    return v0
.end method
