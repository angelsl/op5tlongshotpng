.class Lcom/oneplus/support/core/provider/FontsContractCompat$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Lcom/oneplus/support/core/provider/FontRequest;Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback<",
        "Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;)V
    .locals 4
    .param p1, "typeface"    # Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;

    .line 308
    sget-object v0, Lcom/oneplus/support/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    sget-object v1, Lcom/oneplus/support/core/provider/FontsContractCompat;->sPendingReplies:Lcom/oneplus/support/collection/SimpleArrayMap;

    iget-object v2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 310
    .local v1, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback<Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    if-nez v1, :cond_0

    .line 311
    monitor-exit v0

    return-void

    .line 313
    :cond_0
    sget-object v2, Lcom/oneplus/support/core/provider/FontsContractCompat;->sPendingReplies:Lcom/oneplus/support/collection/SimpleArrayMap;

    iget-object v3, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/support/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 316
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v2, p1}, Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 314
    .end local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback<Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .locals 0

    .line 304
    check-cast p1, Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/provider/FontsContractCompat$3;->onReply(Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
