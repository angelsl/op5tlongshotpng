.class public Lcom/oneplus/lib/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Lcom/oneplus/lib/menu/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;,
        Lcom/oneplus/lib/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/lib/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 158
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 160
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 162
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 164
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 166
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsClosing:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 216
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 225
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 226
    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 227
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 9
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .line 451
    new-instance v8, Lcom/oneplus/lib/menu/MenuItemImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/menu/MenuItemImpl;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 279
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 280
    .local v2, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v2, :cond_1

    .line 281
    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    :cond_1
    invoke-interface {v2, p1}, Lcom/oneplus/lib/menu/MenuPresenter;->updateMenuView(Z)V

    .line 285
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v2    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    :goto_1
    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 287
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 335
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 337
    .local v0, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 340
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 341
    .local v3, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 342
    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_1
    invoke-interface {v3}, Lcom/oneplus/lib/menu/MenuPresenter;->getId()I

    move-result v4

    .line 345
    .local v4, "id":I
    if-lez v4, :cond_2

    .line 346
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 347
    .local v5, "parcel":Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    .line 348
    invoke-interface {v3, v5}, Lcom/oneplus/lib/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 352
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    .end local v4    # "id":I
    .end local v5    # "parcel":Landroid/os/Parcelable;
    :cond_2
    :goto_1
    goto :goto_0

    .line 353
    :cond_3
    return-void

    .line 337
    :cond_4
    :goto_2
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 314
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 316
    .local v0, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 317
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 318
    .local v3, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 319
    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 321
    :cond_1
    invoke-interface {v3}, Lcom/oneplus/lib/menu/MenuPresenter;->getId()I

    move-result v4

    .line 322
    .local v4, "id":I
    if-lez v4, :cond_2

    .line 323
    invoke-interface {v3}, Lcom/oneplus/lib/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 324
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    .line 325
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    .end local v4    # "id":I
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_2
    :goto_1
    goto :goto_0

    .line 331
    :cond_3
    const-string v1, "android:menu:presenters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 332
    return-void
.end method

.method private dispatchSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;Lcom/oneplus/lib/menu/MenuPresenter;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;
    .param p2, "preferredPresenter"    # Lcom/oneplus/lib/menu/MenuPresenter;

    .line 291
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 296
    .local v0, "result":Z
    if-eqz p2, :cond_1

    .line 297
    invoke-interface {p2, p1}, Lcom/oneplus/lib/menu/MenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    move-result v0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 301
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 302
    .local v3, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v3, :cond_2

    .line 303
    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_2
    if-nez v0, :cond_3

    .line 305
    invoke-interface {v3, p1}, Lcom/oneplus/lib/menu/MenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    move-result v0

    .line 307
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    :cond_3
    :goto_1
    goto :goto_0

    .line 308
    :cond_4
    return v0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 827
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 828
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 829
    .local v1, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 830
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 827
    .end local v1    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 834
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .line 760
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 762
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/oneplus/lib/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 766
    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1

    .line 763
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .line 562
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 567
    :cond_1
    return-void

    .line 562
    :cond_2
    :goto_0
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .line 1201
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1203
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 1204
    iput-object p5, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1207
    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1208
    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1210
    :cond_0
    if-lez p1, :cond_1

    .line 1211
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1212
    :cond_1
    if-eqz p2, :cond_2

    .line 1213
    iput-object p2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1216
    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 1217
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1218
    :cond_3
    if-eqz p4, :cond_4

    .line 1219
    iput-object p4, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1223
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1227
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1228
    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .line 793
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 794
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oneplus/commonctrl/R$bool;->op_abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 795
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 796
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .line 462
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .line 472
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 467
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 15
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .line 502
    move-object v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Lcom/oneplus/lib/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 503
    .local v2, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 504
    const/4 v3, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 505
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 507
    .local v3, "N":I
    :cond_0
    and-int/lit8 v7, p7, 0x1

    if-nez v7, :cond_1

    .line 508
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeGroup(I)V

    .line 511
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_4

    .line 512
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 513
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    .line 514
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_2

    move-object v10, v5

    goto :goto_1

    :cond_2
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, v1, v10

    :goto_1
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 515
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 518
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual {p0, v11, v12, v13, v10}, Lcom/oneplus/lib/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 519
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 520
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v10

    .line 521
    .local v10, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_3

    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v14, :cond_3

    .line 522
    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v10, p8, v14

    .line 511
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    .end local v10    # "item":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 526
    .end local v7    # "i":I
    return v3
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 432
    invoke-static {p3}, Lcom/oneplus/lib/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    .line 434
    .local v7, "ordering":I
    iget v6, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v0

    .line 437
    .local v0, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lcom/oneplus/lib/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 443
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 445
    return-object v0
.end method

.method public addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/oneplus/lib/menu/MenuPresenter;

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method public addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Lcom/oneplus/lib/menu/MenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {p1, p2, p0}, Lcom/oneplus/lib/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 257
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .line 482
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .line 496
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 487
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 488
    .local v0, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    new-instance v1, Lcom/oneplus/lib/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)V

    .line 489
    .local v1, "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setSubMenu(Lcom/oneplus/lib/menu/SubMenuBuilder;)V

    .line 491
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 822
    invoke-interface {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 824
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 590
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 591
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 575
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->clear()V

    .line 576
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->clearHeader()V

    .line 577
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 578
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 579
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 580
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 581
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .line 1192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1193
    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1194
    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1197
    return-void
.end method

.method public close()V
    .locals 1

    .line 1026
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 1027
    return-void
.end method

.method public final close(Z)V
    .locals 4
    .param p1, "closeAllMenus"    # Z

    .line 1010
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1012
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsClosing:Z

    .line 1013
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1014
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 1015
    .local v2, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v2, :cond_1

    .line 1016
    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1018
    :cond_1
    invoke-interface {v2, p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 1020
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v2    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    :goto_1
    goto :goto_0

    .line 1021
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsClosing:Z

    .line 1022
    return-void
.end method

.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1352
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    goto :goto_3

    .line 1354
    :cond_0
    const/4 v0, 0x0

    .line 1356
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1357
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1358
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 1359
    .local v3, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 1360
    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1361
    :cond_1
    invoke-interface {v3, p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v4

    move v0, v4

    if-eqz v4, :cond_2

    .line 1362
    goto :goto_2

    .line 1364
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1365
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1367
    if-eqz v0, :cond_4

    .line 1368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1370
    :cond_4
    return v0

    .line 1352
    .end local v0    # "collapsed":Z
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 814
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1330
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1332
    :cond_0
    const/4 v0, 0x0

    .line 1334
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1335
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1336
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 1337
    .local v3, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 1338
    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1339
    :cond_1
    invoke-interface {v3, p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter;->expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v4

    move v0, v4

    if-eqz v4, :cond_2

    .line 1340
    goto :goto_2

    .line 1342
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1343
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1345
    if-eqz v0, :cond_4

    .line 1346
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1348
    :cond_4
    return v0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .line 709
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 711
    .local v0, "size":I
    if-gez p2, :cond_0

    .line 712
    const/4 p2, 0x0

    .line 715
    :cond_0
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 716
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 718
    .local v2, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 719
    return v1

    .line 715
    .end local v2    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "id"    # I

    .line 674
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 675
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 676
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 677
    .local v2, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 678
    return-object v2

    .line 679
    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 682
    .local v3, "possibleItem":Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 683
    return-object v3

    .line 675
    .end local v2    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    .end local v3    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .line 692
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 694
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 695
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 696
    .local v2, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 697
    return v1

    .line 694
    .end local v2    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 701
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 910
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 911
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 912
    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 914
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 915
    return-object v2

    .line 918
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 919
    .local v1, "metaState":I
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 921
    .local v3, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 924
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 925
    .local v4, "size":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 926
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v2

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 932
    .local v6, "qwerty":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_7

    .line 933
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 934
    .local v8, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Lcom/oneplus/lib/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v9

    goto :goto_1

    .line 935
    :cond_2
    invoke-virtual {v8}, Lcom/oneplus/lib/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v9

    :goto_1
    nop

    .line 936
    .local v9, "shortcutChar":C
    iget-object v10, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v10, v5

    if-ne v9, v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_5

    :cond_3
    iget-object v10, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-ne v9, v10, :cond_4

    and-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_5

    :cond_4
    if-eqz v6, :cond_6

    const/16 v10, 0x8

    if-ne v9, v10, :cond_6

    const/16 v10, 0x43

    if-ne p1, v10, :cond_6

    .line 942
    :cond_5
    return-object v8

    .line 932
    .end local v8    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    .end local v9    # "shortcutChar":C
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 945
    .end local v7    # "i":I
    :cond_7
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 17
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 862
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    .line 863
    .local v4, "qwerty":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    .line 864
    .local v5, "modifierState":I
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 866
    .local v6, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {v3, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v7

    .line 868
    .local v7, "isKeyCodeMapped":Z
    const/16 v8, 0x43

    if-nez v7, :cond_0

    if-eq v2, v8, :cond_0

    .line 869
    return-void

    .line 873
    :cond_0
    iget-object v9, v0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 874
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_7

    .line 875
    iget-object v11, v0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 876
    .local v11, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v11}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 877
    invoke-virtual {v11}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v12, v1, v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 880
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v11}, Lcom/oneplus/lib/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v12

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Lcom/oneplus/lib/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v12

    .line 882
    .local v12, "shortcutChar":C
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v11}, Lcom/oneplus/lib/menu/MenuItemImpl;->getAlphabeticModifiers()I

    move-result v13

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Lcom/oneplus/lib/menu/MenuItemImpl;->getNumericModifiers()I

    move-result v13

    .line 883
    .local v13, "shortcutModifiers":I
    :goto_2
    const v14, 0x1100f

    and-int v15, v5, v14

    and-int/2addr v14, v13

    const/16 v16, 0x0

    if-ne v15, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    move/from16 v14, v16

    .line 885
    .local v14, "isModifiersExactMatch":Z
    :goto_3
    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    iget-object v15, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v15, v15, v16

    if-eq v12, v15, :cond_5

    iget-object v15, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/16 v16, 0x2

    aget-char v15, v15, v16

    if-eq v12, v15, :cond_5

    if-eqz v4, :cond_6

    const/16 v15, 0x8

    if-ne v12, v15, :cond_6

    if-ne v2, v8, :cond_6

    .line 890
    :cond_5
    invoke-virtual {v11}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 891
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    .end local v11    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    .end local v12    # "shortcutChar":C
    .end local v13    # "shortcutModifiers":I
    .end local v14    # "isModifiersExactMatch":Z
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 894
    .end local v10    # "i":I
    :cond_7
    return-void
.end method

.method public flagActionItems()V
    .locals 6

    .line 1142
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1144
    .local v0, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    iget-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v1, :cond_0

    .line 1145
    return-void

    .line 1149
    :cond_0
    const/4 v1, 0x0

    .line 1150
    .local v1, "flagged":Z
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1151
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 1152
    .local v4, "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    if-nez v4, :cond_1

    .line 1153
    iget-object v5, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1155
    :cond_1
    invoke-interface {v4}, Lcom/oneplus/lib/menu/MenuPresenter;->flagActionItems()Z

    move-result v5

    or-int/2addr v1, v5

    .line 1157
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v4    # "presenter":Lcom/oneplus/lib/menu/MenuPresenter;
    :goto_1
    goto :goto_0

    .line 1159
    :cond_2
    if-eqz v1, :cond_5

    .line 1160
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1161
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1163
    .local v2, "itemsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1164
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1165
    .local v4, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1166
    iget-object v5, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1168
    :cond_3
    iget-object v5, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    .end local v4    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1171
    .end local v2    # "itemsSize":I
    .end local v3    # "i":I
    :cond_4
    goto :goto_4

    .line 1174
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1175
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1176
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1178
    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1179
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1182
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->flagActionItems()V

    .line 1183
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .line 421
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .line 733
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1187
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->flagActionItems()V

    .line 1188
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .line 1326
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 0

    .line 1307
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1097
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1102
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1104
    .local v0, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1105
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1106
    .local v2, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1112
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v1
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 656
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mOverrideVisibleItems:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 657
    return v1

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 662
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 663
    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 664
    .local v3, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    return v1

    .line 662
    .end local v3    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method isQwertyMode()Z
    .locals 1

    .line 773
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 738
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1093
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1094
    return-void
.end method

.method onItemVisibleChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1082
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1083
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .line 1037
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1038
    if-eqz p1, :cond_0

    .line 1039
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1040
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1043
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    goto :goto_0

    .line 1045
    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1046
    if-eqz p1, :cond_2

    .line 1047
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 1050
    :cond_2
    :goto_0
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 951
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Lcom/oneplus/lib/menu/MenuPresenter;
    .param p3, "flags"    # I

    .line 959
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 961
    .local v0, "itemImpl":Lcom/oneplus/lib/menu/MenuItemImpl;
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 965
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->invoke()Z

    move-result v2

    .line 967
    .local v2, "invoked":Z
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;

    move-result-object v3

    .line 968
    .local v3, "provider":Lcom/oneplus/lib/widget/ActionProvider;
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/ActionProvider;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v1

    .line 969
    .local v5, "providerHasSubMenu":Z
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 970
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->expandActionView()Z

    move-result v1

    or-int/2addr v2, v1

    .line 971
    if-eqz v2, :cond_9

    .line 972
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    goto :goto_2

    .line 974
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    .line 993
    :cond_3
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_9

    .line 994
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    goto :goto_2

    .line 975
    :cond_4
    :goto_1
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_5

    .line 977
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 980
    :cond_5
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-nez v1, :cond_6

    .line 981
    new-instance v1, Lcom/oneplus/lib/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, p0, v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setSubMenu(Lcom/oneplus/lib/menu/SubMenuBuilder;)V

    .line 984
    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 985
    .local v1, "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    if-eqz v5, :cond_7

    .line 986
    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 988
    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;Lcom/oneplus/lib/menu/MenuPresenter;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 989
    if-nez v2, :cond_8

    .line 990
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 992
    .end local v1    # "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    :cond_8
    nop

    .line 998
    :cond_9
    :goto_2
    return v2

    .line 962
    .end local v2    # "invoked":Z
    .end local v3    # "provider":Lcom/oneplus/lib/widget/ActionProvider;
    .end local v5    # "providerHasSubMenu":Z
    :cond_a
    :goto_3
    return v1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .line 839
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v0

    .line 841
    .local v0, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    const/4 v1, 0x0

    .line 843
    .local v1, "handled":Z
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0, v0, p3}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v1

    .line 847
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 848
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 851
    :cond_1
    return v1
.end method

.method public removeGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .line 536
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 538
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 539
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 540
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .line 541
    .local v2, "numRemoved":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 543
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v2, v3

    goto :goto_0

    .line 547
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 549
    .end local v1    # "maxRemovable":I
    .end local v3    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .line 531
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 532
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 570
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 571
    return-void
.end method

.method public removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/oneplus/lib/menu/MenuPresenter;

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 267
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuPresenter;

    .line 268
    .local v2, "item":Lcom/oneplus/lib/menu/MenuPresenter;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/lib/menu/MenuPresenter;>;"
    .end local v2    # "item":Lcom/oneplus/lib/menu/MenuPresenter;
    :cond_1
    goto :goto_0

    .line 272
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "states"    # Landroid/os/Bundle;

    .line 391
    if-nez p1, :cond_0

    .line 392
    return-void

    .line 395
    :cond_0
    nop

    .line 396
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 398
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    .line 399
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 400
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 401
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 402
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 403
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 405
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 406
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 407
    .local v5, "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 399
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v2    # "i":I
    :cond_3
    const-string v2, "android:menu:expandedactionview"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 412
    .local v2, "expandedId":I
    if-lez v2, :cond_4

    .line 413
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 414
    .local v3, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v3, :cond_4

    .line 415
    invoke-interface {v3}, Landroid/view/MenuItem;->expandActionView()Z

    .line 418
    .end local v3    # "itemToExpand":Landroid/view/MenuItem;
    :cond_4
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .line 360
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 361
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outStates"    # Landroid/os/Bundle;

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    .line 367
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 368
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 369
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 370
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 371
    if-nez v0, :cond_0

    .line 372
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    .line 374
    :cond_0
    invoke-virtual {v4, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 375
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const-string v6, "android:menu:expandedactionview"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 381
    .local v5, "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 367
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 388
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 356
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 425
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 426
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1318
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1319
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .line 230
    iput p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 231
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 594
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 596
    .local v0, "group":I
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 597
    .local v1, "N":I
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 598
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 599
    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 600
    .local v3, "curItem":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 601
    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 602
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 605
    :cond_1
    if-ne v3, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 598
    .end local v3    # "curItem":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 609
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .line 613
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 615
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 616
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 617
    .local v2, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 618
    invoke-virtual {v2, p3}, Lcom/oneplus/lib/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 619
    invoke-virtual {v2, p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 615
    .end local v2    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .line 644
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 646
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 647
    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 648
    .local v2, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 649
    invoke-virtual {v2, p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 646
    .end local v2    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .line 626
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    .local v0, "N":I
    const/4 v1, 0x0

    .line 632
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 633
    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 634
    .local v3, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 635
    invoke-virtual {v3, p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 632
    .end local v3    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .end local v2    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 640
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .line 1274
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1275
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1262
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1263
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .line 1250
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1251
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1238
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1239
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 1286
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1287
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 1322
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1323
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0
    .param p1, "override"    # Z

    .line 1383
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1384
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .line 743
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mQwertyMode:Z

    .line 745
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 746
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .line 784
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 785
    return-void

    .line 788
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 789
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 790
    return-void
.end method

.method public size()I
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1068
    iget-boolean v1, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_0

    .line 1069
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1070
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1072
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .line 1058
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1061
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 1063
    :cond_0
    return-void
.end method
