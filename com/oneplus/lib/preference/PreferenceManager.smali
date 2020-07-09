.class public Lcom/oneplus/lib/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;,
        Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "com.oneplus.lib.preference"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstRequestCode"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    .line 152
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    .line 153
    iput p2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextRequestCode:I

    .line 155
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    .line 167
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    .line 866
    monitor-enter p0

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 869
    monitor-exit p0

    return-void

    .line 872
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 873
    .local v0, "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 874
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 877
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 876
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 879
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 874
    .end local v0    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 463
    invoke-static {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .line 538
    invoke-static {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/oneplus/lib/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 538
    invoke-static {p0, v0, v1, p1, p2}, Lcom/oneplus/lib/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 540
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .line 572
    const/4 v0, 0x0

    const-string v1, "_has_set_default_values"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 575
    .local v2, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 577
    .local v0, "pm":Lcom/oneplus/lib/preference/PreferenceManager;
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 579
    const/4 v3, 0x0

    invoke-virtual {v0, p0, p3, v3}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 581
    nop

    .line 582
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 584
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_0

    .line 585
    :catch_0
    move-exception v3

    .line 589
    .local v3, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 592
    .end local v0    # "pm":Lcom/oneplus/lib/preference/PreferenceManager;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "unused":Ljava/lang/AbstractMethodError;
    :cond_1
    :goto_0
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 2
    .param p1, "noCommit"    # Z

    .line 627
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 629
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 634
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    .end local v0    # "unused":Ljava/lang/AbstractMethodError;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    .line 638
    return-void
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .line 832
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    monitor-exit p0

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 289
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    .local v0, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 291
    return-object v0
.end method

.method dispatchActivityDestroy()V
    .locals 4

    .line 799
    const/4 v0, 0x0

    .line 801
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 803
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 805
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    if-eqz v0, :cond_1

    .line 808
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 809
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 810
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-interface {v3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->dismissAllScreens()V

    .line 816
    return-void

    .line 805
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 703
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 704
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 707
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 708
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    goto :goto_1

    .line 707
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 704
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;>;"
    .end local v1    # "N":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispatchActivityStop()V
    .locals 4

    .line 753
    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 755
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 756
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 759
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 760
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 756
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;>;"
    .end local v1    # "N":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 859
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->dismissAllScreens()V

    .line 860
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 507
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method getFragment()Lcom/oneplus/lib/preference/PreferenceFragment;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

    return-object v0
.end method

.method getNextId()J
    .locals 4

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-wide v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNextRequestCode()I
    .locals 2

    .line 826
    monitor-enter p0

    .line 827
    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOnPreferenceTreeClickListener()Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 438
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .local v0, "storageContext":Landroid/content/Context;
    goto :goto_1

    .line 440
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 441
    .restart local v0    # "storageContext":Landroid/content/Context;
    :goto_0
    nop

    .line 447
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 451
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method inflateFromIntent(Landroid/content/Intent;Lcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 11
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "rootPreferences"    # Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 219
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 222
    .local v1, "inflatedRes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 224
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 226
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string v6, "com.oneplus.lib.preference"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 227
    goto :goto_1

    .line 232
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 233
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "uniqueResId":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 236
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v8, "context":Landroid/content/Context;
    nop

    .line 247
    new-instance v9, Lcom/oneplus/lib/preference/PreferenceInflater;

    invoke-direct {v9, v8, p0}, Lcom/oneplus/lib/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 248
    .local v9, "inflater":Lcom/oneplus/lib/preference/PreferenceInflater;
    nop

    .line 249
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 248
    invoke-virtual {v4, v10, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 250
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 251
    invoke-virtual {v9, v6, p2, v3}, Lcom/oneplus/lib/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v10

    move-object p2, v10

    check-cast p2, Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 252
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 241
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "inflater":Lcom/oneplus/lib/preference/PreferenceInflater;
    :catch_0
    move-exception v6

    .line 242
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not create context for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 242
    const-string v9, "PreferenceManager"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "uniqueResId":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 256
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p2, p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 258
    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceManager;->setNoCommit(Z)V

    .line 278
    new-instance v1, Lcom/oneplus/lib/preference/PreferenceInflater;

    invoke-direct {v1, p1, p0}, Lcom/oneplus/lib/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 279
    .local v1, "inflater":Lcom/oneplus/lib/preference/PreferenceInflater;
    invoke-virtual {v1, p2, p3, v0}, Lcom/oneplus/lib/preference/PreferenceInflater;->inflate(ILcom/oneplus/lib/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 280
    invoke-virtual {p3, p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceManager;->setNoCommit(Z)V

    .line 285
    return-object p3
.end method

.method public isStorageDefault()Z
    .locals 3

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 407
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 409
    :cond_1
    return v1
.end method

.method public isStorageDeviceProtected()Z
    .locals 3

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 422
    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 424
    :cond_1
    return v1
.end method

.method registerOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;

    .line 770
    monitor-enter p0

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_1
    monitor-exit p0

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerOnActivityResultListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;

    .line 671
    monitor-enter p0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_1
    monitor-exit p0

    .line 680
    return-void

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityStopListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;

    .line 721
    monitor-enter p0

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_1
    monitor-exit p0

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .line 843
    monitor-enter p0

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 846
    monitor-exit p0

    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 850
    monitor-exit p0

    .line 851
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFragment(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 180
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mFragment:Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 181
    return-void
.end method

.method setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 888
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 889
    return-void
.end method

.method setPreferences(Lcom/oneplus/lib/preference/PreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 491
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 492
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mPreferenceScreen:Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 493
    const/4 v0, 0x1

    return v0

    .line 496
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .line 347
    iput p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 349
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 326
    return-void
.end method

.method public setStorageDefault()V
    .locals 2

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 360
    :cond_0
    return-void
.end method

.method public setStorageDeviceEncrypted()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setStorageDeviceProtected()V

    .line 396
    return-void
.end method

.method public setStorageDeviceProtected()V
    .locals 2

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 384
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mStorage:I

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 387
    :cond_0
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method unregisterOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;

    .line 787
    monitor-enter p0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 791
    :cond_0
    monitor-exit p0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterOnActivityResultListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;

    .line 688
    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 692
    :cond_0
    monitor-exit p0

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityStopListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/preference/PreferenceManager$OnActivityStopListener;

    .line 739
    monitor-enter p0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 743
    :cond_0
    monitor-exit p0

    .line 744
    return-void

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
