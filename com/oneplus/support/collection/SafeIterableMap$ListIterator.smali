.class abstract Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/collection/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/support/collection/SafeIterableMap$Entry;Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<TK;TV;>;"
    .local p1, "start":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    .local p2, "expectedEnd":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 236
    iput-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 237
    return-void
.end method

.method private nextNode()Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->forward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    return-object v0

    .line 264
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method abstract backward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract forward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 241
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 229
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<TK;TV;>;"
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 272
    .local v0, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->nextNode()Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 273
    return-object v0
.end method

.method public supportRemove(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V
    .locals 1
    .param p1    # Lcom/oneplus/support/collection/SafeIterableMap$Entry;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<TK;TV;>;"
    .local p1, "entry":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 249
    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_1

    .line 253
    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->backward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mExpectedEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne v0, p1, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->nextNode()Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 259
    :cond_2
    return-void
.end method