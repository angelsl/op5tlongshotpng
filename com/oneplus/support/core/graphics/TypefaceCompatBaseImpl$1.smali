.class Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl$1;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;->findBestInfo([Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;I)Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl$StyleExtractor<",
        "Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    .line 71
    iput-object p1, p0, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl$1;->this$0:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;

    .line 74
    invoke-virtual {p1}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 0

    .line 71
    check-cast p1, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl$1;->getWeight(Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;)I

    move-result p1

    return p1
.end method

.method public isItalic(Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;

    .line 79
    invoke-virtual {p1}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 0

    .line 71
    check-cast p1, Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl$1;->isItalic(Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;)Z

    move-result p1

    return p1
.end method
