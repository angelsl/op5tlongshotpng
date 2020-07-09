.class public Lcom/oneplus/lib/animator/ActivityTransitionOptions;
.super Ljava/lang/Object;
.source "ActivityTransitionOptions.java"


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mShareElementViewAttrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/animator/ShareElementViewAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mShareElementViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "views"    # [Landroid/view/View;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mActivity:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p2, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mShareElementViews:[Landroid/view/View;

    .line 19
    return-void
.end method

.method public static varargs makeSceneTransitionOptions(Landroid/app/Activity;[Landroid/view/View;)Lcom/oneplus/lib/animator/ActivityTransitionOptions;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "views"    # [Landroid/view/View;

    .line 29
    new-instance v0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/animator/ActivityTransitionOptions;-><init>(Landroid/app/Activity;[Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public captureViewAttrs()V
    .locals 14

    .line 33
    iget-object v0, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mShareElementViews:[Landroid/view/View;

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mShareElementViewAttrs:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mShareElementViews:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 38
    .local v4, "v":Landroid/view/View;
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 39
    .local v5, "location":[I
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 40
    iget-object v6, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mShareElementViewAttrs:Ljava/util/ArrayList;

    new-instance v13, Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v8

    aget v7, v5, v2

    int-to-float v9, v7

    const/4 v7, 0x1

    aget v7, v5, v7

    int-to-float v10, v7

    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v11, v7

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v12, v7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/lib/animator/ShareElementViewAttrs;-><init>(IFFFF)V

    .line 40
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "location":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getShareElementViewAttrs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/animator/ShareElementViewAttrs;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/oneplus/lib/animator/ActivityTransitionOptions;->mShareElementViewAttrs:Ljava/util/ArrayList;

    return-object v0
.end method
