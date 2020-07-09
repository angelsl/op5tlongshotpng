.class public final Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mRequest:Lcom/oneplus/support/core/provider/FontRequest;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStrategy:I

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Lcom/oneplus/support/core/provider/FontRequest;II)V
    .locals 0
    .param p1, "request"    # Lcom/oneplus/support/core/provider/FontRequest;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "strategy"    # I
    .param p3, "timeoutMs"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Lcom/oneplus/support/core/provider/FontRequest;

    .line 82
    iput p2, p0, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 83
    iput p3, p0, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    .line 84
    return-void
.end method


# virtual methods
.method public getFetchStrategy()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    return v0
.end method

.method public getRequest()Lcom/oneplus/support/core/provider/FontRequest;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Lcom/oneplus/support/core/provider/FontRequest;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    return v0
.end method
