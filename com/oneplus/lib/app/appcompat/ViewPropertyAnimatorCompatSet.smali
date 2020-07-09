.class public Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field mListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 104
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet$1;-><init>(Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mProxyListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 78
    .local v1, "animator":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 79
    .end local v1    # "animator":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 81
    return-void
.end method

.method onAnimationsEnded()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 71
    return-void
.end method

.method public play(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "animator"    # Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 37
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-object p0
.end method

.method public playSequentially(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .locals 2
    .param p1, "anim1"    # Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .param p2, "anim2"    # Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 45
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 47
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-object p0
.end method

.method public setDuration(J)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "duration"    # J

    .line 84
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 85
    iput-wide p1, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 87
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 91
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    :cond_0
    return-object p0
.end method

.method public setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 98
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 101
    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 6

    .line 52
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 54
    .local v1, "animator":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    iget-wide v2, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mProxyListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 63
    :cond_3
    invoke-virtual {v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 64
    .end local v1    # "animator":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    goto :goto_0

    .line 66
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 67
    return-void
.end method
