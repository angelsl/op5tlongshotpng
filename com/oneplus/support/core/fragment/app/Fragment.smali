.class public Lcom/oneplus/support/core/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/oneplus/support/lifecycle/LifecycleOwner;
.implements Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;,
        Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;,
        Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;,
        Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field mChildNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

.field mMenuVisible:Z

.field mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

.field mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/lifecycle/MutableLiveData<",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

.field mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    .line 120
    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetIndex:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    .line 218
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 247
    new-instance v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;-><init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    .line 253
    new-instance v0, Lcom/oneplus/support/lifecycle/MutableLiveData;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;

    .line 398
    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 85
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/lifecycle/LifecycleRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 85
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/lifecycle/LifecycleRegistry;)Lcom/oneplus/support/lifecycle/LifecycleRegistry;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/support/core/fragment/app/Fragment;
    .param p1, "x1"    # Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    .line 85
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-object p1
.end method

.method private callStartTransitionListener()V
    .locals 3

    .line 2260
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2261
    const/4 v0, 0x0

    .local v0, "listener":Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;
    goto :goto_0

    .line 2263
    .end local v0    # "listener":Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2264
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2265
    .restart local v0    # "listener":Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2267
    :goto_0
    if-eqz v0, :cond_1

    .line 2268
    invoke-interface {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    .line 2270
    :cond_1
    return-void
.end method

.method private ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;
    .locals 1

    .line 2727
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2728
    new-instance v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    .line 2730
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .line 405
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 424
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_0
    sget-object v2, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {v2, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 425
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 428
    sget-object v3, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {v3, p1, v2}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_0
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 431
    .local v3, "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    if-eqz p2, :cond_1

    .line 432
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 433
    invoke-virtual {v3, p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_1
    return-object v3

    .line 451
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Lcom/oneplus/support/core/fragment/app/Fragment;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 448
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": could not find Fragment constructor"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 444
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 445
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 440
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 441
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 436
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 437
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .line 467
    :try_start_0
    sget-object v0, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 468
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 471
    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_0
    const-class v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 474
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2282
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2283
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2284
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2285
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2288
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2289
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2290
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2291
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2292
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2293
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2294
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2295
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2296
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2297
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2298
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2299
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2300
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2301
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2302
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2304
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 2307
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2310
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 2311
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2312
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2314
    :cond_2
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2317
    :cond_3
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2318
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2321
    :cond_4
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2322
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2323
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2325
    :cond_5
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_6

    .line 2326
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2327
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2328
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2330
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2331
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2333
    :cond_7
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2336
    :cond_8
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2337
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2339
    :cond_9
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2340
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2342
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2343
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2344
    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2346
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2348
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2350
    :cond_b
    invoke-static {p0}, Lcom/oneplus/support/loader/app/LoaderManager;->getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2351
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2355
    :cond_c
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 509
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 2358
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2359
    return-object p0

    .line 2361
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2362
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 2364
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActivity()Lcom/oneplus/support/core/fragment/app/FragmentActivity;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    :goto_0
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$600(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$600(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2167
    :goto_1
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$700(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$700(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2192
    :goto_1
    return v0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 1

    .line 2785
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2786
    const/4 v0, 0x0

    return-object v0

    .line 2788
    :cond_0
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object v0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 1

    .line 2800
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2801
    const/4 v0, 0x0

    return-object v0

    .line 2803
    :cond_0
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_3

    .line 829
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->instantiateChildFragmentManager()V

    .line 830
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchResume()V

    goto :goto_0

    .line 832
    :cond_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 833
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 834
    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 835
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 836
    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 837
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 840
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1950
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 1951
    const/4 v0, 0x0

    return-object v0

    .line 1953
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$000(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;
    .locals 1

    .line 2771
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2772
    const/4 v0, 0x0

    return-object v0

    .line 2774
    :cond_0
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 2029
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2030
    const/4 v0, 0x0

    return-object v0

    .line 2032
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$200(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getExitTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;
    .locals 1

    .line 2778
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2779
    const/4 v0, 0x0

    return-object v0

    .line 2781
    :cond_0
    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    return-object v0
.end method

.method public final getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 1277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 1279
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedFragmentState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1310
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1315
    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getChildFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    .line 1316
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1317
    return-object v0

    .line 1311
    .end local v0    # "result":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getLoaderManager()Lcom/oneplus/support/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1049
    invoke-static {p0}, Lcom/oneplus/support/loader/app/LoaderManager;->getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method getNextAnim()I
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2735
    const/4 v0, 0x0

    return v0

    .line 2737
    :cond_0
    iget v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    return v0
.end method

.method getNextTransition()I
    .locals 1

    .line 2748
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2749
    const/4 v0, 0x0

    return v0

    .line 2751
    :cond_0
    iget v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    return v0
.end method

.method getNextTransitionStyle()I
    .locals 1

    .line 2764
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2765
    const/4 v0, 0x0

    return v0

    .line 2767
    :cond_0
    iget v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return v0
.end method

.method public final getParentFragment()Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    .line 2067
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2068
    const/4 v0, 0x0

    return-object v0

    .line 2070
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$300(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$300(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 2070
    :goto_0
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .line 966
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1989
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 1990
    const/4 v0, 0x0

    return-object v0

    .line 1992
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$100(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1993
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$100(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 1992
    :goto_0
    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 2100
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2101
    const/4 v0, 0x0

    return-object v0

    .line 2103
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$400(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 2138
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2139
    const/4 v0, 0x0

    return-object v0

    .line 2141
    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$500(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2142
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2143
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$500(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 2141
    :goto_0
    return-object v0
.end method

.method getStateAfterAnimating()I
    .locals 1

    .line 2807
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2808
    const/4 v0, 0x0

    return v0

    .line 2810
    :cond_0
    iget v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 766
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .line 657
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .line 1038
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1561
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewLifecycleOwner()Lcom/oneplus/support/lifecycle/LifecycleOwner;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 299
    return-object v0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Lcom/oneplus/support/lifecycle/LiveData;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/support/lifecycle/LiveData<",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getViewModelStore()Lcom/oneplus/support/lifecycle/ViewModelStore;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    return-object v0

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 929
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 516
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 2

    .line 1732
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    .line 1733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 1734
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    .line 1735
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    .line 1736
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFromLayout:Z

    .line 1737
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    .line 1738
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRestored:Z

    .line 1739
    iput v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mBackStackNesting:I

    .line 1740
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    .line 1741
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    .line 1742
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    .line 1743
    iput v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    .line 1744
    iput v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    .line 1745
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 1746
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    .line 1747
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    .line 1748
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    .line 1749
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    .line 2368
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 2371
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    .line 2372
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    new-instance v2, Lcom/oneplus/support/core/fragment/app/Fragment$2;

    invoke-direct {v2, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$2;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->attachController(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;Lcom/oneplus/support/core/fragment/app/FragmentContainer;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 2392
    return-void

    .line 2369
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isAdded()Z
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDetached()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .locals 1

    .line 2825
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2826
    const/4 v0, 0x0

    return v0

    .line 2828
    :cond_0
    iget-boolean v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    .line 502
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    .line 894
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 935
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    return v0
.end method

.method isPostponed()Z
    .locals 1

    .line 2818
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2819
    const/4 v0, 0x0

    return v0

    .line 2821
    :cond_0
    iget-boolean v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .line 883
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    .line 902
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStateSaved()Z
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 911
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 911
    :goto_0
    return v0
.end method

.method noteStateNotSaved()V
    .locals 1

    .line 2500
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2501
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2503
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1580
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1119
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1420
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1403
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1404
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 1405
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1406
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1408
    :cond_1
    return-void
.end method

.method public onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "childFragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 1394
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1667
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1900
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1481
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1482
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 1483
    invoke-virtual {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1486
    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1438
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1458
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1854
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getActivity()Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1855
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 1774
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1537
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1720
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-boolean v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;->clear()V

    .line 1723
    :cond_0
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .line 1801
    return-void
.end method

.method public onDestroyView()V
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1707
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_DESTROY:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 1710
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1758
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 1261
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 945
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1382
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1365
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1366
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 1367
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1368
    invoke-virtual {p0, v0, p2, p3}, Lcom/oneplus/support/core/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1370
    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1693
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .line 1652
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1822
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1833
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1677
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .line 1661
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1791
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1221
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1620
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1642
    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1609
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1687
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1551
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 1596
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_CREATE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 1599
    :cond_0
    return-void
.end method

.method peekChildFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2441
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2442
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2444
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2446
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2447
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    .line 2451
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2452
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2454
    :cond_1
    return-void

    .line 2448
    :cond_2
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2520
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2521
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2522
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2524
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2587
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2588
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2589
    return v1

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2592
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2593
    return v1

    .line 2597
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2395
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2396
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2398
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2399
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2400
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2401
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsCreated:Z

    .line 2402
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2406
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_CREATE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2407
    return-void

    .line 2403
    :cond_1
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 2543
    const/4 v0, 0x0

    .line 2544
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2545
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2546
    const/4 v0, 0x1

    .line 2547
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2549
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2550
    invoke-virtual {v1, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2553
    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2411
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2412
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2414
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2415
    new-instance v0, Lcom/oneplus/support/core/fragment/app/Fragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$3;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    .line 2424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    .line 2425
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2426
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2428
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    .line 2430
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2432
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    if-nez v1, :cond_2

    .line 2436
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    .line 2438
    :goto_0
    return-void

    .line 2433
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroy()V
    .locals 3

    .line 2672
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_DESTROY:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2673
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2674
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2676
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2677
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2678
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsCreated:Z

    .line 2679
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onDestroy()V

    .line 2680
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    .line 2685
    return-void

    .line 2681
    :cond_1
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .locals 3

    .line 2653
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2654
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2656
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2658
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onDestroyView()V

    .line 2659
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_1

    .line 2667
    invoke-static {p0}, Lcom/oneplus/support/loader/app/LoaderManager;->getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/support/loader/app/LoaderManager;->markForRedelivery()V

    .line 2668
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2669
    return-void

    .line 2660
    :cond_1
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .locals 3

    .line 2688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2689
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onDetach()V

    .line 2690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2691
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_2

    .line 2699
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2700
    iget-boolean v2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetaining:Z

    if-eqz v2, :cond_0

    .line 2704
    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2705
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    goto :goto_0

    .line 2701
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2707
    :cond_1
    :goto_0
    return-void

    .line 2692
    :cond_2
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 1292
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1293
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1294
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method performLowMemory()V
    .locals 1

    .line 2527
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onLowMemory()V

    .line 2528
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2529
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2531
    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .line 2506
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2507
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2508
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2510
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2571
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2572
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2573
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2574
    return v1

    .line 2577
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2578
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2579
    return v1

    .line 2583
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2601
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2602
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2603
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2605
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2606
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2609
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    .line 2622
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2623
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2625
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2626
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2627
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPause()V

    .line 2629
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2631
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onPause()V

    .line 2632
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    .line 2636
    return-void

    .line 2633
    :cond_2
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 2513
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2514
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2515
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2517
    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2557
    const/4 v0, 0x0

    .line 2558
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2559
    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2560
    const/4 v0, 0x1

    .line 2561
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2563
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2564
    invoke-virtual {v1, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2567
    :cond_1
    return v0
.end method

.method performResume()V
    .locals 3

    .line 2478
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2479
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2480
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2482
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2484
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onResume()V

    .line 2485
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    .line 2489
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2490
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 2491
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2494
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2495
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2497
    :cond_2
    return-void

    .line 2486
    :cond_3
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2612
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2613
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2614
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2615
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2616
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2619
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    .line 2457
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2458
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2459
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2461
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2463
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onStart()V

    .line 2464
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    .line 2468
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2469
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStart()V

    .line 2471
    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2472
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2473
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2475
    :cond_2
    return-void

    .line 2465
    :cond_3
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .locals 3

    .line 2639
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_STOP:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    .line 2640
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2641
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStop()V

    .line 2643
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    .line 2644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 2645
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onStop()V

    .line 2646
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2650
    return-void

    .line 2647
    :cond_1
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postponeEnterTransition()V
    .locals 2

    .line 2227
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2228
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1868
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1869
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .line 1195
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 1199
    return-void

    .line 1196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireActivity()Lcom/oneplus/support/core/fragment/app/FragmentActivity;
    .locals 4
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 706
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getActivity()Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    move-result-object v0

    .line 707
    .local v0, "activity":Lcom/oneplus/support/core/fragment/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 710
    return-object v0

    .line 708
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to an activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 4
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 678
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 679
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 682
    return-object v0

    .line 680
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to a context."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 4
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 814
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 815
    .local v0, "fragmentManager":Lcom/oneplus/support/core/fragment/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 819
    return-object v0

    .line 816
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not associated with a fragment manager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 732
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    .line 733
    .local v0, "host":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 736
    return-object v0

    .line 734
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to a host."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1501
    if-eqz p1, :cond_1

    .line 1502
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1504
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 1505
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    .line 1506
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->instantiateChildFragmentManager()V

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    .line 1509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    .line 1510
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1513
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 480
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 484
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    .line 485
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 486
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 490
    return-void

    .line 487
    :cond_1
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2155
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$602(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2156
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2180
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$702(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2181
    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2792
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    .line 2793
    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 2796
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    .line 2797
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 564
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 568
    return-void
.end method

.method public setEnterSharedElementCallback(Lcom/oneplus/support/core/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/support/core/app/SharedElementCallback;

    .line 1911
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    .line 1912
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1936
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$002(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    return-void
.end method

.method public setExitSharedElementCallback(Lcom/oneplus/support/core/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/support/core/app/SharedElementCallback;

    .line 1922
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    .line 1923
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2012
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$202(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    .line 977
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 978
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    .line 979
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 983
    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .locals 1
    .param p1, "replaced"    # Z

    .line 2832
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    .line 2833
    return-void
.end method

.method final setIndex(ILcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parent"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 493
    iput p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    .line 494
    if-eqz p2, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 499
    :goto_0
    return-void
.end method

.method public setInitialSavedState(Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 603
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_1

    .line 606
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 608
    return-void

    .line 604
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .line 995
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 996
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    .line 997
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1001
    :cond_0
    return-void
.end method

.method setNextAnim(I)V
    .locals 1
    .param p1, "animResourceId"    # I

    .line 2741
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2742
    return-void

    .line 2744
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    .line 2745
    return-void
.end method

.method setNextTransition(II)V
    .locals 1
    .param p1, "nextTransition"    # I
    .param p2, "nextTransitionStyle"    # I

    .line 2755
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2756
    return-void

    .line 2758
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    .line 2759
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iput p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2760
    iput p2, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    .line 2761
    return-void
.end method

.method setOnStartEnterTransitionListener(Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2710
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    .line 2711
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_0

    .line 2712
    return-void

    .line 2714
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2715
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2718
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_3

    .line 2719
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iput-object p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2721
    :cond_3
    if-eqz p1, :cond_4

    .line 2722
    invoke-interface {p1}, Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    .line 2724
    :cond_4
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2051
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$302(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0
    .param p1, "retain"    # Z

    .line 962
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mRetainInstance:Z

    .line 963
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1972
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$102(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2086
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$402(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2121
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$502(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    return-void
.end method

.method setStateAfterAnimating(I)V
    .locals 1
    .param p1, "state"    # I

    .line 2814
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    .line 2815
    return-void
.end method

.method public setTargetFragment(Lcom/oneplus/support/core/fragment/app/Fragment;I)V
    .locals 6
    .param p1, "fragment"    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .line 627
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 628
    .local v0, "mine":Lcom/oneplus/support/core/fragment/app/FragmentManager;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 629
    .local v1, "theirs":Lcom/oneplus/support/core/fragment/app/FragmentManager;
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 630
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 635
    :cond_2
    :goto_1
    move-object v2, p1

    .local v2, "check":Lcom/oneplus/support/core/fragment/app/Fragment;
    :goto_2
    if-eqz v2, :cond_4

    .line 636
    if-eq v2, p0, :cond_3

    .line 635
    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getTargetFragment()Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v2

    goto :goto_2

    .line 637
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as the target of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " would create a target cycle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    .end local v2    # "check":Lcom/oneplus/support/core/fragment/app/Fragment;
    :cond_4
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 642
    iput p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetRequestCode:I

    .line 643
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .line 1020
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsCreated:Z

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 1024
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1025
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mDeferStart:Z

    .line 1026
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1029
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 1031
    :cond_2
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1244
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1058
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1065
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1068
    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1069
    return-void

    .line 1066
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 1076
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1077
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1084
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1088
    return-void

    .line 1085
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
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

    .line 1097
    move-object v9, p0

    iget-object v0, v9, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1100
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1102
    return-void

    .line 1098
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    .line 2241
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2243
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/support/core/fragment/app/Fragment$1;

    invoke-direct {v1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$1;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2251
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->callStartTransitionListener()V

    goto :goto_1

    .line 2242
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2253
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 522
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/oneplus/support/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 523
    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 524
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    :cond_0
    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    .line 528
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 532
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1879
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1880
    return-void
.end method
