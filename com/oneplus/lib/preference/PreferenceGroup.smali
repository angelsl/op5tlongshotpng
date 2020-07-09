.class public abstract Lcom/oneplus/lib/preference/PreferenceGroup;
.super Lcom/oneplus/lib/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Lcom/oneplus/lib/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/preference/Preference;",
        "Lcom/oneplus/lib/preference/GenericInflater$Parent<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 55
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceGroup_android_orderingFromXml:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method private removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->onPrepareForRemoval()V

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lcom/oneplus/lib/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 106
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->addPreference(Lcom/oneplus/lib/preference/Preference;)Z

    .line 107
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->addItemFromInflater(Lcom/oneplus/lib/preference/Preference;)V

    return-void
.end method

.method public addPreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    return v1

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v0, :cond_1

    .line 142
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/preference/Preference;->setOrder(I)V

    .line 145
    :cond_1
    instance-of v0, p1, Lcom/oneplus/lib/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceGroup;

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 152
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_3
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, "insertionIndex":I
    if-gez v0, :cond_4

    .line 159
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 161
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    .end local v0    # "insertionIndex":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/preference/Preference;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 166
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 172
    return v1

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 321
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 324
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 325
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 326
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 310
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 314
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 315
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 5
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 232
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-object p0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 236
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 237
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    .line 238
    .local v2, "preference":Lcom/oneplus/lib/preference/Preference;
    invoke-virtual {v2}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "curKey":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    return-object v2

    .line 244
    :cond_1
    instance-of v4, v2, Lcom/oneplus/lib/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 245
    move-object v4, v2

    check-cast v4, Lcom/oneplus/lib/preference/PreferenceGroup;

    .line 246
    invoke-virtual {v4, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    .line 247
    .local v4, "returnedPreference":Lcom/oneplus/lib/preference/Preference;
    if-eqz v4, :cond_2

    .line 248
    return-object v4

    .line 236
    .end local v2    # "preference":Lcom/oneplus/lib/preference/Preference;
    .end local v3    # "curKey":Ljava/lang/String;
    .end local v4    # "returnedPreference":Lcom/oneplus/lib/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreference(I)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .line 124
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .line 292
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 297
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 298
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 3

    .line 269
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 277
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 278
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 214
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/preference/Preference;->onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onPrepareForRemoval()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 288
    return-void
.end method

.method public removeAll()V
    .locals 3

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 200
    .local v0, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/Preference;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 201
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/Preference;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/preference/PreferenceGroup;->removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z

    .line 200
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    .end local v0    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/Preference;>;"
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removePreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 182
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    .line 183
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 184
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 90
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 305
    monitor-exit p0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
