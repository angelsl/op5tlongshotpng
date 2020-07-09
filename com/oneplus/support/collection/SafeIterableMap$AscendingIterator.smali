.class Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;
.super Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/collection/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AscendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<",
        "TK;TV;>;"
    }
.end annotation


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

    .line 283
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator<TK;TV;>;"
    .local p1, "start":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    .local p2, "expectedEnd":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;-><init>(Lcom/oneplus/support/collection/SafeIterableMap$Entry;Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V

    .line 284
    return-void
.end method


# virtual methods
.method backward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator<TK;TV;>;"
    .local p1, "entry":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0
.end method

.method forward(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator<TK;TV;>;"
    .local p1, "entry":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0
.end method
