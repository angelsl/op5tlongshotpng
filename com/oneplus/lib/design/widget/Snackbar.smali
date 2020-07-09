.class public final Lcom/oneplus/lib/design/widget/Snackbar;
.super Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/Snackbar$SnackbarLayout;,
        Lcom/oneplus/lib/design/widget/Snackbar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<",
        "Lcom/oneplus/lib/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1


# instance fields
.field private mCallback:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback<",
            "Lcom/oneplus/lib/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "contentViewCallback"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;)V

    .line 118
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "fallback":Landroid/view/ViewGroup;
    :goto_0
    instance-of v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 195
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 196
    :cond_0
    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    .line 200
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 203
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 207
    :cond_2
    if-eqz p0, :cond_4

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 210
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move-object p0, v2

    .line 212
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_4
    if-nez p0, :cond_5

    .line 215
    return-object v0

    .line 212
    :cond_5
    goto :goto_0
.end method

.method public static make(Landroid/view/View;II)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/oneplus/lib/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 140
    invoke-static {p0}, Lcom/oneplus/lib/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 141
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 147
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_design_layout_snackbar_include:I

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;

    .line 151
    .local v2, "content":Lcom/oneplus/lib/design/widget/SnackbarContentLayout;
    const-string v3, "OP_FEATURE_HOLE_PUNCH_FRONT_CAM"

    invoke-static {v3}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->op_design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    .local v3, "insetPadding":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 155
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getPaddingStart()I

    move-result v4

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->setPaddingRelative(IIII)V

    .line 162
    .end local v3    # "insetPadding":I
    :cond_1
    :goto_0
    new-instance v3, Lcom/oneplus/lib/design/widget/Snackbar;

    invoke-direct {v3, v0, v2, v2}, Lcom/oneplus/lib/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;)V

    .line 163
    .local v3, "snackbar":Lcom/oneplus/lib/design/widget/Snackbar;
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/design/widget/Snackbar;

    .line 164
    invoke-virtual {v3, p2}, Lcom/oneplus/lib/design/widget/Snackbar;->setDuration(I)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 165
    return-object v3

    .line 142
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "content":Lcom/oneplus/lib/design/widget/SnackbarContentLayout;
    .end local v3    # "snackbar":Lcom/oneplus/lib/design/widget/Snackbar;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/lib/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/lib/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/Snackbar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;

    .line 261
    .local v0, "contentLayout":Lcom/oneplus/lib/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v2

    .line 263
    .local v2, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    new-instance v1, Lcom/oneplus/lib/design/widget/Snackbar$1;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/lib/design/widget/Snackbar$1;-><init>(Lcom/oneplus/lib/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :goto_1
    return-object p0
.end method

.method public setActionTextColor(I)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 2
    .param p1, "color"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/Snackbar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;

    .line 300
    .local v0, "contentLayout":Lcom/oneplus/lib/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 301
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/Snackbar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;

    .line 288
    .local v0, "contentLayout":Lcom/oneplus/lib/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 289
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 290
    return-object p0
.end method

.method public setCallback(Lcom/oneplus/lib/design/widget/Snackbar$Callback;)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/Snackbar$Callback;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/Snackbar;->mCallback:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/Snackbar;->removeCallback(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 325
    :cond_0
    if-eqz p1, :cond_1

    .line 326
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/Snackbar;->addCallback(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 330
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/Snackbar;->mCallback:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;

    .line 331
    return-object p0
.end method

.method public setText(I)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/design/widget/Snackbar;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/Snackbar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;

    .line 226
    .local v0, "contentLayout":Lcom/oneplus/lib/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    .line 227
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-object p0
.end method
