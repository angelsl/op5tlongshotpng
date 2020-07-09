.class interface abstract Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/collection/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SupportRemove"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract supportRemove(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V
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
.end method
