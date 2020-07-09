.class public Lcom/oneplus/support/lifecycle/MutableLiveData;
.super Lcom/oneplus/support/lifecycle/LiveData;
.source "MutableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/support/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lcom/oneplus/support/lifecycle/MutableLiveData;, "Lcom/oneplus/support/lifecycle/MutableLiveData<TT;>;"
    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public postValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/oneplus/support/lifecycle/MutableLiveData;, "Lcom/oneplus/support/lifecycle/MutableLiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/oneplus/support/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/oneplus/support/lifecycle/MutableLiveData;, "Lcom/oneplus/support/lifecycle/MutableLiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/oneplus/support/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
