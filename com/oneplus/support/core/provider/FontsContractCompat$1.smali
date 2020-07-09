.class Lcom/oneplus/support/core/provider/FontsContractCompat$1;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Lcom/oneplus/support/core/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/support/core/provider/FontRequest;ILjava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$request:Lcom/oneplus/support/core/provider/FontRequest;

    iput p3, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$style:I

    iput-object p4, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$request:Lcom/oneplus/support/core/provider/FontRequest;

    iget v2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$style:I

    invoke-static {v0, v1, v2}, Lcom/oneplus/support/core/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Lcom/oneplus/support/core/provider/FontRequest;I)Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v0

    .line 260
    .local v0, "typeface":Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;
    iget-object v1, v0, Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 261
    sget-object v1, Lcom/oneplus/support/core/provider/FontsContractCompat;->sTypefaceCache:Lcom/oneplus/support/collection/LruCache;

    iget-object v2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    iget-object v3, v0, Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/support/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/oneplus/support/core/provider/FontsContractCompat$1;->call()Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v0

    return-object v0
.end method
