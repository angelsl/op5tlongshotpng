.class Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;
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
    accessFlags = 0x2
    name = "IteratorWithAdditions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private mBeforeStart:Z

.field private mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/support/collection/SafeIterableMap;


# direct methods
.method private constructor <init>(Lcom/oneplus/support/collection/SafeIterableMap;)V
    .locals 0

    .line 314
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iput-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->this$0:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/support/collection/SafeIterableMap;Lcom/oneplus/support/collection/SafeIterableMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/support/collection/SafeIterableMap;
    .param p2, "x1"    # Lcom/oneplus/support/collection/SafeIterableMap$1;

    .line 314
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    invoke-direct {p0, p1}, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;-><init>(Lcom/oneplus/support/collection/SafeIterableMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 329
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-boolean v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->this$0:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-static {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->access$100(Lcom/oneplus/support/collection/SafeIterableMap;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 314
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-boolean v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 339
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->this$0:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-static {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->access$100(Lcom/oneplus/support/collection/SafeIterableMap;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

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

    .line 321
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    .local p1, "entry":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_1

    .line 322
    iget-object v0, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 323
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mCurrent:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 325
    :cond_1
    return-void
.end method
