.class public Lcom/oneplus/support/core/fragment/app/FragmentActivity;
.super Lcom/oneplus/support/core/app/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;
.implements Lcom/oneplus/support/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/oneplus/support/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;,
        Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z

.field private mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/oneplus/support/core/app/ComponentActivity;-><init>()V

    .line 82
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity$1;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->createController(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;)Lcom/oneplus/support/core/fragment/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    return-void
.end method

.method private allocateRequestIndex(Lcom/oneplus/support/core/fragment/app/Fragment;)I
    .locals 4
    .param p1, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 906
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_1

    .line 911
    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    iget v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v2}, Lcom/oneplus/support/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 912
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 916
    :cond_0
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 917
    .local v0, "requestIndex":I
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/support/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 918
    iget v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 921
    return v0

    .line 907
    .end local v0    # "requestIndex":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkForValidRequestCode(I)V
    .locals 2
    .param p0, "requestCode"    # I

    .line 792
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 795
    return-void

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private markFragmentsCreated()V
    .locals 2

    .line 1038
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->markState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z

    move-result v0

    .line 1039
    .local v0, "reiterate":Z
    if-nez v0, :cond_0

    .line 1040
    return-void

    .line 1039
    :cond_0
    goto :goto_0
.end method

.method private static markState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z
    .locals 6
    .param p0, "manager"    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .param p1, "state"    # Lcom/oneplus/support/lifecycle/Lifecycle$State;

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "hadNotMarked":Z
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 1045
    .local v1, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/support/core/fragment/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1046
    .local v3, "fragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-nez v3, :cond_0

    .line 1047
    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/Fragment;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/support/lifecycle/Lifecycle;->getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Lcom/oneplus/support/lifecycle/Lifecycle$State;->STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Lcom/oneplus/support/lifecycle/Lifecycle$State;->isAtLeast(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1050
    iget-object v4, v3, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-virtual {v4, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->markState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    .line 1051
    const/4 v0, 0x1

    .line 1054
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/Fragment;->peekChildFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v4

    .line 1055
    .local v4, "childFragmentManager":Lcom/oneplus/support/core/fragment/app/FragmentManager;
    if-eqz v4, :cond_2

    .line 1056
    invoke-static {v4, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->markState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1058
    .end local v3    # "fragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    .end local v4    # "childFragmentManager":Lcom/oneplus/support/core/fragment/app/FragmentManager;
    :cond_2
    goto :goto_0

    .line 1059
    :cond_3
    return v0
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 395
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 683
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/app/ComponentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 684
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 692
    invoke-static {p0}, Lcom/oneplus/support/loader/app/LoaderManager;->getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/oneplus/support/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 652
    nop

    .line 653
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;

    .line 654
    .local v0, "nc":Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;
    .locals 1

    .line 314
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Lcom/oneplus/support/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    invoke-static {p0}, Lcom/oneplus/support/loader/app/LoaderManager;->getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Lcom/oneplus/support/lifecycle/ViewModelStore;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    return-object v0

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 146
    shr-int/lit8 v0, p1, 0x10

    .line 147
    .local v0, "requestIndex":I
    if-eqz v0, :cond_2

    .line 148
    add-int/lit8 v0, v0, -0x1

    .line 150
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "who":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->remove(I)V

    .line 152
    const-string v2, "FragmentActivity"

    if-nez v1, :cond_0

    .line 153
    const-string v3, "Activity result delivered for unknown Fragment."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v3

    .line 157
    .local v3, "targetFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-nez v3, :cond_1

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v3, v2, p2, p3}, Lcom/oneplus/support/core/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    :goto_0
    return-void

    .line 166
    .end local v1    # "who":Ljava/lang/String;
    .end local v3    # "targetFragment":Lcom/oneplus/support/core/fragment/app/Fragment;
    :cond_2
    invoke-static {}, Lcom/oneplus/support/core/app/ActivityCompat;->getPermissionCompatDelegate()Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;

    move-result-object v1

    .line 167
    .local v1, "delegate":Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;
    if-eqz v1, :cond_3

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    return-void

    .line 172
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/app/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 709
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 182
    .local v0, "fragmentManager":Lcom/oneplus/support/core/fragment/app/FragmentManager;
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    .line 183
    .local v1, "isStateSaved":Z
    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    :cond_1
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onBackPressed()V

    .line 193
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 284
    invoke-super {p0, p1}, Lcom/oneplus/support/core/app/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 286
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 323
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->attachHost(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 325
    invoke-super {p0, p1}, Lcom/oneplus/support/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 327
    nop

    .line 328
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;

    .line 329
    .local v0, "nc":Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    .line 330
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    iput-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    .line 332
    :cond_0
    if-eqz p1, :cond_4

    .line 333
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 334
    .local v2, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    :cond_1
    invoke-virtual {v3, v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    .line 337
    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 338
    nop

    .line 339
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 340
    const-string v1, "android:support:request_indicies"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 341
    .local v1, "requestCodes":[I
    const-string v3, "android:support:request_fragment_who"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "fragmentWhos":[Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    array-length v4, v1

    array-length v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 346
    :cond_2
    new-instance v4, Lcom/oneplus/support/collection/SparseArrayCompat;

    array-length v5, v1

    invoke-direct {v4, v5}, Lcom/oneplus/support/collection/SparseArrayCompat;-><init>(I)V

    iput-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    .line 347
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 348
    iget-object v5, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    aget v6, v1, v4

    aget-object v7, v3, v4

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/support/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    .end local v4    # "i":I
    :cond_3
    :goto_1
    const-string v4, "FragmentActivity"

    const-string v5, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v1    # "requestCodes":[I
    .end local v2    # "p":Landroid/os/Parcelable;
    .end local v3    # "fragmentWhos":[Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    if-nez v1, :cond_5

    .line 355
    new-instance v1, Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-direct {v1}, Lcom/oneplus/support/collection/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    .line 356
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 359
    :cond_5
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchCreate()V

    .line 360
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 367
    if-nez p1, :cond_0

    .line 368
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 369
    .local v0, "show":Z
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 370
    return v0

    .line 372
    .end local v0    # "show":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 377
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 379
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/app/ComponentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 381
    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 388
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/app/ComponentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 390
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 403
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onDestroy()V

    .line 405
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;->clear()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchDestroy()V

    .line 410
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 417
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onLowMemory()V

    .line 418
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchLowMemory()V

    .line 419
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 426
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/app/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    return v0

    .line 430
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 438
    const/4 v0, 0x0

    return v0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 262
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 481
    invoke-super {p0, p1}, Lcom/oneplus/support/core/app/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 482
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 483
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 447
    if-eqz p1, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 452
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/app/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 453
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 460
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onPause()V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mResumed:Z

    .line 462
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchPause()V

    .line 467
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 277
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 515
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onPostResume()V

    .line 516
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 518
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->execPendingActions()Z

    .line 519
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 549
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lcom/oneplus/support/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 536
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 537
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 538
    .local v0, "goforit":Z
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 539
    return v0

    .line 541
    .end local v0    # "goforit":Z
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 832
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 833
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 834
    .local v0, "index":I
    if-eqz v0, :cond_2

    .line 835
    add-int/lit8 v0, v0, -0x1

    .line 837
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 838
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->remove(I)V

    .line 839
    const-string v3, "FragmentActivity"

    if-nez v2, :cond_0

    .line 840
    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void

    .line 843
    :cond_0
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v4, v2}, Lcom/oneplus/support/core/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v4

    .line 844
    .local v4, "frag":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-nez v4, :cond_1

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    :cond_1
    and-int/2addr v1, p1

    invoke-virtual {v4, v1, p2, p3}, Lcom/oneplus/support/core/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 850
    .end local v2    # "who":Ljava/lang/String;
    .end local v4    # "frag":Lcom/oneplus/support/core/fragment/app/Fragment;
    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 504
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onResume()V

    .line 505
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mResumed:Z

    .line 507
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->execPendingActions()Z

    .line 508
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchResume()V

    .line 529
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .line 559
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 561
    .local v0, "custom":Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentController;->retainNestedNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 563
    .local v1, "fragments":Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 564
    const/4 v2, 0x0

    return-object v2

    .line 567
    :cond_0
    new-instance v2, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 568
    .local v2, "nci":Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;
    iput-object v0, v2, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 569
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    iput-object v3, v2, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    .line 570
    iput-object v1, v2, Lcom/oneplus/support/core/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    .line 571
    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 579
    invoke-super {p0, p1}, Lcom/oneplus/support/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 580
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 581
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 582
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 583
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 586
    iget v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const-string v2, "android:support:next_request_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 589
    .local v1, "requestCodes":[I
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 590
    .local v2, "fragmentWhos":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 591
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Lcom/oneplus/support/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 592
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v3    # "i":I
    :cond_1
    const-string v3, "android:support:request_indicies"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 595
    const-string v3, "android:support:request_fragment_who"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 597
    .end local v1    # "requestCodes":[I
    .end local v2    # "fragmentWhos":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 604
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onStart()V

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    .line 608
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mCreated:Z

    .line 610
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchActivityCreated()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 614
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->execPendingActions()Z

    .line 618
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchStart()V

    .line 619
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 491
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 626
    invoke-super {p0}, Lcom/oneplus/support/core/app/ComponentActivity;->onStop()V

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStopped:Z

    .line 629
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 631
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mFragments:Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentController;->dispatchStop()V

    .line 632
    return-void
.end method

.method requestPermissionsFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 929
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 930
    invoke-static {p0, p2, p3}, Lcom/oneplus/support/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 931
    return-void

    .line 933
    :cond_0
    invoke-static {p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 935
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 936
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->allocateRequestIndex(Lcom/oneplus/support/core/fragment/app/Fragment;)I

    move-result v1

    .line 937
    .local v1, "requestIndex":I
    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2}, Lcom/oneplus/support/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    .end local v1    # "requestIndex":I
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 941
    nop

    .line 942
    return-void

    .line 940
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v1
.end method

.method public setEnterSharedElementCallback(Lcom/oneplus/support/core/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/support/core/app/SharedElementCallback;

    .line 217
    invoke-static {p0, p1}, Lcom/oneplus/support/core/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Lcom/oneplus/support/core/app/SharedElementCallback;)V

    .line 218
    return-void
.end method

.method public setExitSharedElementCallback(Lcom/oneplus/support/core/app/SharedElementCallback;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/support/core/app/SharedElementCallback;

    .line 230
    invoke-static {p0, p1}, Lcom/oneplus/support/core/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Lcom/oneplus/support/core/app/SharedElementCallback;)V

    .line 231
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 736
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 737
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 738
    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 741
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 742
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 749
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 750
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 751
    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 754
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 755
    return-void
.end method

.method public startActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 857
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->startActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 858
    return-void
.end method

.method public startActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 867
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 868
    :try_start_0
    invoke-static {p0, p2, v0, p4}, Lcom/oneplus/support/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 869
    return-void

    .line 871
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 872
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->allocateRequestIndex(Lcom/oneplus/support/core/fragment/app/Fragment;)I

    move-result v0

    .line 873
    .local v0, "requestIndex":I
    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2, p4}, Lcom/oneplus/support/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    .end local v0    # "requestIndex":I
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 877
    nop

    .line 878
    return-void

    .line 876
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw v0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 763
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 764
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 765
    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 768
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oneplus/support/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 770
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 778
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 779
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 780
    invoke-static {p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 783
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/oneplus/support/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 785
    return-void
.end method

.method public startIntentSenderFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 12
    .param p1, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 886
    move-object v9, p0

    move v10, p3

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 888
    const/4 v0, -0x1

    const/4 v11, 0x0

    if-ne v10, v0, :cond_0

    .line 889
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_0
    invoke-static/range {v1 .. v8}, Lcom/oneplus/support/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    iput-boolean v11, v9, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 891
    return-void

    .line 893
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 894
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->allocateRequestIndex(Lcom/oneplus/support/core/fragment/app/Fragment;)I

    move-result v0

    .line 895
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, v10

    add-int v3, v1, v2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lcom/oneplus/support/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    .end local v0    # "requestIndex":I
    iput-boolean v11, v9, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 900
    nop

    .line 901
    return-void

    .line 899
    :catchall_0
    move-exception v0

    iput-boolean v11, v9, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 205
    invoke-static {p0}, Lcom/oneplus/support/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 206
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 669
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 238
    invoke-static {p0}, Lcom/oneplus/support/core/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 239
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 246
    invoke-static {p0}, Lcom/oneplus/support/core/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 247
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .line 806
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 808
    invoke-static {p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 810
    :cond_0
    return-void
.end method
