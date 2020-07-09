.class Lcom/oneplus/support/core/provider/FontsContractCompat$2;
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
.field final synthetic val$fontCallback:Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$fontCallback:Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;

    iput-object p2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;)V
    .locals 3
    .param p1, "typeface"    # Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;

    .line 278
    if-nez p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$fontCallback:Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_0

    .line 281
    :cond_0
    iget v0, p1, Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$fontCallback:Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;

    iget-object v1, p1, Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$fontCallback:Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;

    iget v1, p1, Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    iget-object v2, p0, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 286
    :goto_0
    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .locals 0

    .line 275
    check-cast p1, Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/provider/FontsContractCompat$2;->onReply(Lcom/oneplus/support/core/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
