.class public Lcom/oneplus/lib/app/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AboutActivity"

.field private static final URL_PRIVACY_POLICY:Ljava/lang/String; = "https://www.oneplus.com/global/legal/privacy-policy"


# instance fields
.field private mAppName:Landroid/widget/TextView;

.field private mAppRightReservedText:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mButton1:Lcom/oneplus/lib/widget/button/OPButton;

.field private mButton2:Lcom/oneplus/lib/widget/button/OPButton;

.field private mMinAppIcon:Landroid/widget/ImageView;

.field private mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMyUid()I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method private initView()V
    .locals 4

    .line 79
    sget v0, Lcom/oneplus/commonctrl/R$id;->app_name:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mAppName:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/oneplus/commonctrl/R$id;->app_icon:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mMinAppIcon:Landroid/widget/ImageView;

    .line 81
    sget v0, Lcom/oneplus/commonctrl/R$id;->app_version:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mAppVersion:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/oneplus/commonctrl/R$id;->app_right_reserved:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mAppRightReservedText:Landroid/widget/TextView;

    .line 83
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mButton1:Lcom/oneplus/lib/widget/button/OPButton;

    .line 84
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mButton2:Lcom/oneplus/lib/widget/button/OPButton;

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mButton1:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->enableButton1()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 87
    sget v0, Lcom/oneplus/commonctrl/R$id;->button_space:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->enableButton1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    nop

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    .local v0, "manager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    return v1

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 163
    .local v2, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 164
    :cond_2
    :goto_0
    return v1
.end method

.method private loadAppInfo()V
    .locals 6

    .line 92
    invoke-static {p0}, Lcom/oneplus/lib/util/PackageUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "appName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/oneplus/lib/app/AboutActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/oneplus/lib/util/PackageUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "appVersion":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 99
    iget-object v2, p0, Lcom/oneplus/lib/app/AboutActivity;->mAppVersion:Landroid/widget/TextView;

    sget v3, Lcom/oneplus/commonctrl/R$string;->about_app_version_text:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/app/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_1
    invoke-static {p0}, Lcom/oneplus/lib/util/PackageUtils;->getAppIcon(Landroid/content/Context;)I

    move-result v2

    .line 103
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 104
    iget-object v3, p0, Lcom/oneplus/lib/app/AboutActivity;->mMinAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :cond_2
    return-void
.end method

.method private loadRightReserved()V
    .locals 7

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 112
    .local v2, "currentYear":I
    iget-object v3, p0, Lcom/oneplus/lib/app/AboutActivity;->mAppRightReservedText:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$string;->about_app_right_reserved:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/lib/app/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method


# virtual methods
.method public createPrivacyIntent()Landroid/content/Intent;
    .locals 1

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTermserviceIntent()Landroid/content/Intent;
    .locals 1

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableButton1()Z
    .locals 1

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public enableMinAppIcon()Z
    .locals 1

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public gotoPrivacy(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 129
    invoke-static {p0}, Lcom/oneplus/lib/app/AboutActivity;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/app/AboutActivity;->getMyUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/lib/app/PrivacyOnLineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "https://www.oneplus.com/global/legal/privacy-policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->createPrivacyIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .restart local v0    # "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AboutActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 144
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method public gotoTermsService(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->createTermserviceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AboutActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 126
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/oneplus/commonctrl/R$layout;->about_activity:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->setContentView(I)V

    .line 49
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iput-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 50
    iget-object v0, p0, Lcom/oneplus/lib/app/AboutActivity;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 51
    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-direct {p0}, Lcom/oneplus/lib/app/AboutActivity;->initView()V

    .line 53
    invoke-direct {p0}, Lcom/oneplus/lib/app/AboutActivity;->loadAppInfo()V

    .line 54
    invoke-direct {p0}, Lcom/oneplus/lib/app/AboutActivity;->loadRightReserved()V

    .line 55
    sget v0, Lcom/oneplus/commonctrl/R$id;->lottie_panel:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->setupLottieAnimationIcon(Landroid/widget/FrameLayout;)V

    .line 56
    sget v0, Lcom/oneplus/commonctrl/R$id;->release_note_panel:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/AboutActivity;->setupReleaseNote(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->onBackPressed()V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    invoke-static {p0}, Lcom/oneplus/lib/util/NavigationBarUtils;->setNavBarColor(Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method public setupLottieAnimationIcon(Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "lottieViewParent"    # Landroid/widget/FrameLayout;

    .line 201
    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->enableMinAppIcon()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/lib/app/AboutActivity;->enableMinAppIcon()Z

    move-result v0

    .line 203
    .local v0, "enableMinAppIcon":Z
    iget-object v3, p0, Lcom/oneplus/lib/app/AboutActivity;->mMinAppIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/oneplus/lib/app/AboutActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    .local v1, "appNameParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    if-eqz v0, :cond_2

    .line 206
    sget v3, Lcom/oneplus/commonctrl/R$id;->app_icon:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 208
    :cond_2
    sget v3, Lcom/oneplus/commonctrl/R$id;->lottie_panel:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    :goto_1
    return-void
.end method

.method public setupReleaseNote(Landroid/view/View;)V
    .locals 0
    .param p1, "releaseNoteParent"    # Landroid/view/View;

    .line 193
    return-void
.end method
