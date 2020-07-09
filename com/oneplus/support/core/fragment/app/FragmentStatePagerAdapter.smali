.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;
.super Lcom/oneplus/support/viewpager/widget/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapt"


# instance fields
.field private mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

.field private final mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;

    .line 77
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 75
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 78
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    .line 79
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 132
    move-object v0, p3

    check-cast v0, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 134
    .local v0, "fragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    .line 139
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_1

    .line 140
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->saveFragmentInstanceState(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 142
    :goto_1
    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->remove(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    .line 147
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 168
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    .line 172
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Lcom/oneplus/support/core/fragment/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 100
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 102
    .local v0, "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 103
    return-object v0

    .line 107
    .end local v0    # "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    .line 111
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->getItem(I)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    .line 113
    .local v0, "fragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 114
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;

    .line 115
    .local v1, "fss":Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setInitialSavedState(Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;)V

    .line 119
    .end local v1    # "fss":Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 120
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 124
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->add(ILcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    .line 127
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 176
    move-object v0, p2

    check-cast v0, Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 203
    if-eqz p1, :cond_4

    .line 204
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 205
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 206
    const-string v1, "states"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 207
    .local v1, "fss":[Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 209
    if-eqz v1, :cond_0

    .line 210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v4, v1, v2

    check-cast v4, Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 215
    .local v2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    .local v4, "key":Ljava/lang/String;
    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 218
    .local v5, "index":I
    iget-object v6, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v6, v0, v4}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v6

    .line 219
    .local v6, "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-eqz v6, :cond_2

    .line 220
    :goto_2
    iget-object v7, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v5, :cond_1

    .line 221
    iget-object v7, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oneplus/support/core/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 224
    iget-object v7, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 226
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad fragment at key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentStatePagerAdapt"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    :cond_3
    :goto_3
    goto :goto_1

    .line 231
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fss":[Landroid/os/Parcelable;
    .end local v2    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "state":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 184
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;

    .line 185
    .local v1, "fss":[Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 188
    .end local v1    # "fss":[Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 189
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 190
    .local v2, "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    if-nez v0, :cond_1

    .line 192
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 194
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 188
    .end local v2    # "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 152
    move-object v0, p3

    check-cast v0, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 153
    .local v0, "fragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 154
    if-eqz v1, :cond_0

    .line 155
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 156
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 162
    :cond_1
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 164
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
