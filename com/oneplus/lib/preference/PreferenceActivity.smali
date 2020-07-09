.class public abstract Lcom/oneplus/lib/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceActivity$Header;,
        Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 218
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 227
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$1;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/preference/PreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .line 125
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .line 125
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .line 125
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .line 1456
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    .line 1457
    .local v0, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1459
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1460
    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1461
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1464
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 1449
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    return-void

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1453
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 1479
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1480
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1481
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1486
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1252
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1254
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1258
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1259
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1260
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1261
    sget v2, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1262
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1263
    return-void

    .line 1255
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1537
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1539
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    .line 1540
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1553
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1555
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    .line 1556
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    .line 1555
    invoke-virtual {v0, p0, p1, v1}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    .line 1557
    return-void
.end method

.method findBestMatchingHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 7
    .param p1, "cur"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;)",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .line 1306
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1308
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1309
    .local v2, "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    if-eq p1, v2, :cond_4

    iget-wide v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    iget-wide v5, v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_2

    .line 1315
    :cond_0
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1316
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1317
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1319
    :cond_1
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 1320
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1321
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1323
    :cond_2
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 1324
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1325
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    .end local v2    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .restart local v2    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1312
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    .end local v1    # "j":I
    .end local v2    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1330
    .local v1, "NM":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1331
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    return-object v2

    .line 1332
    :cond_6
    if-le v1, v2, :cond_a

    .line 1333
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v1, :cond_a

    .line 1334
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1335
    .local v3, "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1336
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1337
    return-object v3

    .line 1339
    :cond_7
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1340
    return-object v3

    .line 1342
    :cond_8
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1343
    return-object v3

    .line 1333
    .end local v3    # "oh":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1347
    .end local v2    # "j":I
    :cond_a
    const/4 v2, 0x0

    return-object v2
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1584
    const/4 v0, 0x0

    return-object v0

    .line 1587
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 1420
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/lib/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1422
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->finish()V

    goto :goto_0

    .line 1425
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBackPressed()V

    .line 1426
    if-eqz p1, :cond_1

    .line 1427
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1428
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1433
    :cond_1
    :goto_0
    return-void
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1475
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1521
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1522
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    return-object v0

    .line 1524
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolBar()Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .locals 1

    .line 722
    sget v0, Lcom/oneplus/commonctrl/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-object v0
.end method

.method public hasHeaders()Z
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateHeaders()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 823
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .line 746
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 966
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 972
    const/4 v0, 0x1

    return v0

    .line 967
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 18
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 833
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    const-string v0, "extra"

    const-string v1, "Error parsing headers"

    const/4 v2, 0x0

    .line 835
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 836
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 839
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    const/4 v5, 0x2

    if-eq v6, v5, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, "nodeName":Ljava/lang/String;
    const-string v8, "preference-headers"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 851
    const/4 v8, 0x0

    .line 853
    .local v8, "curBundle":Landroid/os/Bundle;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 854
    .local v9, "outerDepth":I
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move v6, v10

    if-eq v10, v7, :cond_16

    const/4 v10, 0x3

    if-ne v6, v10, :cond_2

    .line 855
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v9, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v14, p0

    move-object/from16 v10, p2

    goto/16 :goto_c

    .line 856
    :cond_2
    :goto_2
    if-eq v6, v10, :cond_15

    const/4 v11, 0x4

    if-ne v6, v11, :cond_3

    .line 857
    move-object/from16 v14, p0

    move-object/from16 v10, p2

    move-object/from16 v17, v8

    goto/16 :goto_b

    .line 860
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 861
    const-string v12, "header"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 862
    new-instance v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-direct {v12}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;-><init>()V

    .line 864
    .local v12, "header":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    sget-object v13, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader:[I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v14, p0

    :try_start_2
    invoke-virtual {v14, v3, v13}, Lcom/oneplus/lib/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 866
    .local v13, "sa":Landroid/content/res/TypedArray;
    sget v15, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader_android_id:I

    const/4 v11, -0x1

    invoke-virtual {v13, v15, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move-object/from16 v17, v8

    .end local v8    # "curBundle":Landroid/os/Bundle;
    .local v17, "curBundle":Landroid/os/Bundle;
    int-to-long v7, v11

    iput-wide v7, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    .line 869
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader_android_title:I

    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 871
    .local v7, "tv":Landroid/util/TypedValue;
    if-eqz v7, :cond_5

    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v10, :cond_5

    .line 872
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_4

    .line 873
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->titleRes:I

    goto :goto_3

    .line 875
    :cond_4
    iget-object v8, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 878
    :cond_5
    :goto_3
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader_android_summary:I

    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v7, v8

    .line 880
    if-eqz v7, :cond_7

    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v10, :cond_7

    .line 881
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_6

    .line 882
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->summaryRes:I

    goto :goto_4

    .line 884
    :cond_6
    iget-object v8, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 887
    :cond_7
    :goto_4
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader_android_breadCrumbTitle:I

    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v7, v8

    .line 889
    if-eqz v7, :cond_9

    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v10, :cond_9

    .line 890
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_8

    .line 891
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    goto :goto_5

    .line 893
    :cond_8
    iget-object v8, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 896
    :cond_9
    :goto_5
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader_android_breadCrumbShortTitle:I

    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v7, v8

    .line 898
    if-eqz v7, :cond_b

    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v10, :cond_b

    .line 899
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_a

    .line 900
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    goto :goto_6

    .line 902
    :cond_a
    iget-object v8, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 905
    :cond_b
    :goto_6
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader_android_icon:I

    const/4 v11, 0x0

    invoke-virtual {v13, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->iconRes:I

    .line 907
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->PreferenceHeader_android_fragment:I

    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 909
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 911
    if-nez v17, :cond_c

    .line 912
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .end local v17    # "curBundle":Landroid/os/Bundle;
    .restart local v8    # "curBundle":Landroid/os/Bundle;
    goto :goto_7

    .line 911
    .end local v8    # "curBundle":Landroid/os/Bundle;
    .restart local v17    # "curBundle":Landroid/os/Bundle;
    :cond_c
    move-object/from16 v8, v17

    .line 915
    .end local v17    # "curBundle":Landroid/os/Bundle;
    .restart local v8    # "curBundle":Landroid/os/Bundle;
    :goto_7
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 916
    .local v11, "innerDepth":I
    :goto_8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    move v6, v15

    const/4 v10, 0x1

    if-eq v15, v10, :cond_12

    const/4 v15, 0x3

    if-ne v6, v15, :cond_d

    .line 917
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v11, :cond_12

    .line 918
    :cond_d
    const/4 v15, 0x3

    if-eq v6, v15, :cond_11

    const/4 v10, 0x4

    if-ne v6, v10, :cond_e

    .line 919
    goto :goto_a

    .line 922
    :cond_e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 923
    .local v17, "innerNodeName":Ljava/lang/String;
    move-object/from16 v10, v17

    .end local v17    # "innerNodeName":Ljava/lang/String;
    .local v10, "innerNodeName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v0, v3, v8}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 925
    invoke-static {v2}, Lcom/oneplus/lib/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 927
    :cond_f
    const-string v15, "intent"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v2, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_9

    .line 931
    :cond_10
    invoke-static {v2}, Lcom/oneplus/lib/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 933
    .end local v10    # "innerNodeName":Ljava/lang/String;
    :goto_9
    nop

    .line 916
    :cond_11
    :goto_a
    const/4 v10, 0x3

    goto :goto_8

    .line 935
    :cond_12
    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v10

    if-lez v10, :cond_13

    .line 936
    iput-object v8, v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 937
    const/4 v8, 0x0

    .line 940
    :cond_13
    move-object/from16 v10, p2

    :try_start_3
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    const/4 v7, 0x1

    .end local v7    # "tv":Landroid/util/TypedValue;
    .end local v11    # "innerDepth":I
    .end local v12    # "header":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    goto/16 :goto_1

    .line 951
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "curBundle":Landroid/os/Bundle;
    .end local v9    # "outerDepth":I
    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 948
    :catch_0
    move-exception v0

    goto/16 :goto_e

    .line 946
    :catch_1
    move-exception v0

    goto/16 :goto_10

    .line 942
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v8    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "outerDepth":I
    :cond_14
    move-object/from16 v14, p0

    move-object/from16 v10, p2

    move-object/from16 v17, v8

    .end local v8    # "curBundle":Landroid/os/Bundle;
    .local v17, "curBundle":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/oneplus/lib/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v8, v17

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 856
    .end local v17    # "curBundle":Landroid/os/Bundle;
    .restart local v8    # "curBundle":Landroid/os/Bundle;
    :cond_15
    move-object/from16 v14, p0

    move-object/from16 v10, p2

    move-object/from16 v17, v8

    .line 854
    .end local v8    # "curBundle":Landroid/os/Bundle;
    .restart local v17    # "curBundle":Landroid/os/Bundle;
    :goto_b
    move-object/from16 v8, v17

    const/4 v7, 0x1

    goto/16 :goto_1

    .end local v17    # "curBundle":Landroid/os/Bundle;
    .restart local v8    # "curBundle":Landroid/os/Bundle;
    :cond_16
    move-object/from16 v14, p0

    move-object/from16 v10, p2

    move-object/from16 v17, v8

    .line 951
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "curBundle":Landroid/os/Bundle;
    .end local v9    # "outerDepth":I
    :goto_c
    nop

    .line 952
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 955
    return-void

    .line 846
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_17
    move-object/from16 v14, p0

    move-object/from16 v10, p2

    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/oneplus/lib/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 948
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/oneplus/lib/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    :catch_2
    move-exception v0

    goto :goto_f

    .line 946
    :catch_3
    move-exception v0

    goto :goto_11

    .line 951
    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_d

    .line 948
    :catch_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_e

    .line 946
    :catch_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_10

    .line 951
    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p1

    :goto_d
    move-object/from16 v10, p2

    goto :goto_12

    .line 948
    :catch_6
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p1

    :goto_e
    move-object/from16 v10, p2

    .line 949
    .local v0, "e":Ljava/io/IOException;
    :goto_f
    :try_start_5
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/oneplus/lib/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    throw v3

    .line 946
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/oneplus/lib/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    :catch_7
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p1

    :goto_10
    move-object/from16 v10, p2

    .line 947
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_11
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/oneplus/lib/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 951
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/oneplus/lib/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    :catchall_3
    move-exception v0

    :goto_12
    if-eqz v2, :cond_18

    .line 952
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_18
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1051
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1053
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 813
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .line 1123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1125
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1127
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1128
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1129
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1130
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 1060
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1062
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1063
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->postBindPreferences()V

    .line 1065
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 533
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->requestWindowFeature(I)Z

    .line 539
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity:[I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_preferenceActivityStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 544
    .local v1, "sa":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_android_layout:I

    sget v5, Lcom/oneplus/commonctrl/R$layout;->op_preference_list_content:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 548
    .local v2, "layoutResId":I
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_oneplusHeaderLayout:I

    sget v6, Lcom/oneplus/commonctrl/R$layout;->op_preference_header_item:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 551
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_headerRemoveIconIfEmpty:I

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 555
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 557
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setContentView(I)V

    .line 559
    sget v5, Lcom/oneplus/commonctrl/R$id;->list_footer:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 560
    sget v5, Lcom/oneplus/commonctrl/R$id;->prefs_frame:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 561
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    .line 562
    .local v5, "hidingHeaders":Z
    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v0

    :goto_1
    iput-boolean v6, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    .line 563
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, ":android:show_fragment"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 564
    .local v6, "initialFragment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, ":android:show_fragment_args"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 565
    .local v7, "initialArguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, ":android:show_fragment_title"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 566
    .local v8, "initialTitle":I
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, ":android:show_fragment_short_title"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 568
    .local v9, "initialShortTitle":I
    if-eqz p1, :cond_3

    .line 571
    const-string v10, ":android:headers"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 572
    .local v10, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    if-eqz v10, :cond_2

    .line 573
    iget-object v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 574
    const/4 v11, -0x1

    const-string v12, ":android:cur_header"

    invoke-virtual {p1, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 576
    .local v11, "curHeader":I
    if-ltz v11, :cond_2

    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 577
    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v12}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 581
    .end local v10    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    .end local v11    # "curHeader":I
    :cond_2
    goto :goto_3

    .line 582
    :cond_3
    if-eqz v6, :cond_5

    iget-boolean v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v10, :cond_5

    .line 586
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 587
    if-eqz v8, :cond_7

    .line 588
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 589
    .local v10, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    .line 590
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object v11, v3

    .line 591
    .local v11, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0, v10, v11}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 592
    .end local v10    # "initialTitleStr":Ljava/lang/CharSequence;
    .end local v11    # "initialShortTitleStr":Ljava/lang/CharSequence;
    goto :goto_3

    .line 596
    :cond_5
    iget-object v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 601
    iget-object v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 602
    iget-boolean v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v10, :cond_7

    .line 603
    if-nez v6, :cond_6

    .line 604
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onGetInitialHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v10

    .line 605
    .local v10, "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v10}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 606
    .end local v10    # "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    goto :goto_3

    .line 607
    :cond_6
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 616
    :cond_7
    :goto_3
    const/16 v10, 0x8

    if-eqz v6, :cond_9

    iget-boolean v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v11, :cond_9

    .line 618
    sget v0, Lcom/oneplus/commonctrl/R$id;->headers:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 620
    if-eqz v8, :cond_c

    .line 621
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 622
    .local v0, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v9, :cond_8

    .line 623
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    :cond_8
    nop

    .line 624
    .local v3, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_4
    invoke-virtual {p0, v0, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 625
    .end local v0    # "initialTitleStr":Ljava/lang/CharSequence;
    .end local v3    # "initialShortTitleStr":Ljava/lang/CharSequence;
    goto :goto_5

    .line 626
    :cond_9
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 627
    new-instance v3, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;

    iget-object v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    iget-boolean v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    invoke-direct {v3, p0, v11, v12, v13}, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 629
    iget-boolean v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v3, :cond_c

    .line 631
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 632
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_a

    .line 633
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 635
    :cond_a
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 640
    :cond_b
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_preference_list_content_single:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setContentView(I)V

    .line 641
    sget v0, Lcom/oneplus/commonctrl/R$id;->list_footer:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 642
    sget v0, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 643
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceManager;

    const/16 v3, 0x64

    invoke-direct {v0, p0, v3}, Lcom/oneplus/lib/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    .line 644
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 648
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 649
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 651
    sget v3, Lcom/oneplus/commonctrl/R$id;->button_bar:I

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 653
    sget v3, Lcom/oneplus/commonctrl/R$id;->back_button:I

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 654
    .local v3, "backButton":Landroid/widget/Button;
    new-instance v11, Lcom/oneplus/lib/preference/PreferenceActivity$2;

    invoke-direct {v11, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$2;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    sget v11, Lcom/oneplus/commonctrl/R$id;->skip_button:I

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 661
    .local v11, "skipButton":Landroid/widget/Button;
    new-instance v12, Lcom/oneplus/lib/preference/PreferenceActivity$3;

    invoke-direct {v12, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$3;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    sget v12, Lcom/oneplus/commonctrl/R$id;->next_button:I

    invoke-virtual {p0, v12}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 668
    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    new-instance v13, Lcom/oneplus/lib/preference/PreferenceActivity$4;

    invoke-direct {v13, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$4;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    const-string v12, "extra_prefs_set_next_text"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 677
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 678
    .local v12, "buttonText":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 679
    iget-object v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v13, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 681
    :cond_d
    iget-object v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 684
    .end local v12    # "buttonText":Ljava/lang/String;
    :cond_e
    :goto_6
    const-string v12, "extra_prefs_set_back_text"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 685
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 686
    .restart local v12    # "buttonText":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 687
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 689
    :cond_f
    invoke-virtual {v3, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 692
    .end local v12    # "buttonText":Ljava/lang/String;
    :cond_10
    :goto_7
    const-string v10, "extra_prefs_show_skip"

    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 693
    invoke-virtual {v11, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 697
    .end local v3    # "backButton":Landroid/widget/Button;
    .end local v11    # "skipButton":Landroid/widget/Button;
    :cond_11
    sget v3, Lcom/oneplus/commonctrl/R$id;->toolbar:I

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 698
    .local v3, "toolbar":Lcom/oneplus/lib/widget/actionbar/Toolbar;
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 700
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 998
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1001
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 1004
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 3

    .line 779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 780
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 781
    .local v1, "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    iget-object v2, v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 782
    return-object v1

    .line 779
    .end local v1    # "h":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one header with a fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetNewHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 1

    .line 795
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/oneplus/lib/preference/PreferenceActivity$Header;I)V
    .locals 9
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .line 1089
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1090
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1091
    iget v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1092
    .local v0, "titleRes":I
    iget v1, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1093
    .local v1, "shortTitleRes":I
    if-nez v0, :cond_0

    .line 1094
    iget v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->titleRes:I

    .line 1095
    const/4 v1, 0x0

    .line 1097
    :cond_0
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v7, v0

    move v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1099
    .end local v0    # "titleRes":I
    .end local v1    # "shortTitleRes":I
    goto :goto_0

    .line 1100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1103
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1105
    :cond_3
    :goto_0
    return-void
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .line 768
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 2

    .line 755
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$bool;->preferences_prefer_dual_pane:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 757
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 1069
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1071
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1073
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 1074
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v1, p3}, Lcom/oneplus/lib/preference/PreferenceActivity;->onHeaderClick(Lcom/oneplus/lib/preference/PreferenceActivity$Header;I)V

    .line 1077
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1592
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1595
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lcom/oneplus/lib/preference/PreferenceFragment;Lcom/oneplus/lib/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Lcom/oneplus/lib/preference/PreferenceFragment;
    .param p2, "pref"    # Lcom/oneplus/lib/preference/Preference;

    .line 1437
    invoke-virtual {p2}, Lcom/oneplus/lib/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oneplus/lib/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/oneplus/lib/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1438
    invoke-virtual {p2}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1437
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1439
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/oneplus/lib/preference/PreferenceScreen;Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/oneplus/lib/preference/PreferenceScreen;
    .param p2, "preference"    # Lcom/oneplus/lib/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 1032
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1033
    const-string v0, ":android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1034
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    .line 1036
    .local v1, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 1037
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1038
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1039
    return-void

    .line 1046
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1047
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1008
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1010
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const-string v1, ":android:headers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1012
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1014
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1015
    const-string v1, ":android:cur_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1020
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    .line 1022
    .local v0, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v0, :cond_1

    .line 1023
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1024
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1025
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1028
    .end local v0    # "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 704
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 706
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getToolBar()Lcom/oneplus/lib/widget/actionbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    .line 709
    .local v1, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 713
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getToolBar()Lcom/oneplus/lib/widget/actionbar/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 718
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v1    # "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 988
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 990
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityStop()V

    .line 993
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 980
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 981
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 1220
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1223
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/oneplus/lib/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1498
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1500
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->setPreferences(Lcom/oneplus/lib/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1501
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->postBindPreferences()V

    .line 1502
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1504
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1508
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1226
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1227
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1228
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1229
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 1231
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 1233
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 1234
    return-void
.end method

.method showBreadCrumbs(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 2
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1237
    if-eqz p1, :cond_2

    .line 1238
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1239
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1242
    :cond_0
    if-nez v0, :cond_1

    .line 1243
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1245
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1246
    .end local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1247
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1249
    :goto_0
    return-void
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 1176
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_4

    .line 1177
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1180
    .local v0, "crumbs":Landroid/view/View;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    nop

    .line 1185
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v1, :cond_1

    .line 1186
    if-eqz p1, :cond_0

    .line 1187
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1189
    :cond_0
    return-void

    .line 1191
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_3

    .line 1192
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1194
    sget v1, Lcom/oneplus/commonctrl/R$id;->breadcrumb_section:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1195
    .local v1, "bcSection":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1196
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1200
    .end local v1    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1201
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v1, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1183
    return-void

    .line 1203
    .end local v0    # "crumbs":Landroid/view/View;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1204
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1206
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1207
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1209
    :goto_1
    return-void
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .line 1358
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1359
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    sget v1, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1360
    if-eqz p2, :cond_0

    .line 1361
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1362
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1364
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1366
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1367
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .line 1390
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1391
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p6

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/oneplus/lib/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1

    .line 1393
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1394
    .local v0, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1395
    invoke-virtual {v0, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1397
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1398
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    sget v2, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1399
    if-eqz p3, :cond_2

    .line 1400
    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1401
    :cond_2
    if-eqz p4, :cond_3

    .line 1402
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1404
    :cond_3
    :goto_0
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1405
    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1406
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1408
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :goto_1
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .line 1139
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1140
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .line 1162
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1163
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1164
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1168
    :goto_0
    return-void
.end method

.method public switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1291
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ":android:prefs"

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    .line 1297
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1301
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 1303
    :goto_0
    return-void

    .line 1298
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1273
    const/4 v0, 0x0

    .line 1274
    .local v0, "selectedHeader":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1275
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    iget-object v2, v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1276
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 1277
    goto :goto_1

    .line 1274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1280
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    .line 1281
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1282
    return-void
.end method
