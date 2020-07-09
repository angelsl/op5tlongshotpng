.class public Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 24
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    iput p2, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mThemeResource:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 29
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 31
    return-void
.end method

.method private initializeTheme()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 90
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 94
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 95
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 48
    return-object v0

    .line 51
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mThemeResource:I

    if-nez v0, :cond_1

    .line 52
    sget v0, Lcom/oneplus/commonctrl/R$style;->Oneplus_Theme_DeviceDefault:I

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mThemeResource:I

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->initializeTheme()V

    .line 56
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 83
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 35
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mThemeResource:I

    if-eq v0, p1, :cond_0

    .line 36
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->mThemeResource:I

    .line 37
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;->initializeTheme()V

    .line 39
    :cond_0
    return-void
.end method
