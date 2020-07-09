.class Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;
.super Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlwaysActiveObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/support/lifecycle/LiveData<",
        "TT;>.ObserverWrapper;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;, "Lcom/oneplus/support/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    .local p2, "observer":Lcom/oneplus/support/lifecycle/Observer;, "Lcom/oneplus/support/lifecycle/Observer<-TT;>;"
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;-><init>(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/Observer;)V

    .line 427
    return-void
.end method


# virtual methods
.method shouldBeActive()Z
    .locals 1

    .line 431
    .local p0, "this":Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;, "Lcom/oneplus/support/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    const/4 v0, 0x1

    return v0
.end method
