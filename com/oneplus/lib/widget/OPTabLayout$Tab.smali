.class public final Lcom/oneplus/lib/widget/OPTabLayout$Tab;
.super Ljava/lang/Object;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mParent:Lcom/oneplus/lib/widget/OPTabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/widget/OPTabLayout;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    .line 870
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    .line 871
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    .line 851
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    return-object v0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 963
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public select()V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/OPTabLayout;->selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    .line 1039
    return-void
.end method

.method public setContentDescription(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1059
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .line 1073
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1074
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$100(Lcom/oneplus/lib/widget/OPTabLayout;I)V

    .line 1077
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 942
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    .line 943
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 942
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 920
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 921
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 922
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$100(Lcom/oneplus/lib/widget/OPTabLayout;I)V

    .line 924
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1003
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 988
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 989
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 990
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$100(Lcom/oneplus/lib/widget/OPTabLayout;I)V

    .line 992
    :cond_0
    return-object p0
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 967
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    .line 968
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 889
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 890
    return-object p0
.end method

.method public setText(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1
    .param p1, "resId"    # I

    .line 1031
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1015
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1016
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$100(Lcom/oneplus/lib/widget/OPTabLayout;I)V

    .line 1019
    :cond_0
    return-object p0
.end method
