.class Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field private mRemoveIconIfEmpty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutResId"    # I
    .param p4, "removeIconBehavior"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;IZ)V"
        }
    .end annotation

    .line 273
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 274
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 275
    iput p3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    .line 276
    iput-boolean p4, p0, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    .line 277
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 284
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity$1;)V

    .line 287
    .local v2, "holder":Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 288
    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 289
    const v3, 0x1020010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 290
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "holder":Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object v1, p2

    .line 293
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .line 297
    .restart local v2    # "holder":Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    .line 298
    .local v3, "header":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    iget-boolean v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    .line 299
    iget v4, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->iconRes:I

    if-nez v4, :cond_1

    .line 300
    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v6, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 306
    :cond_2
    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v6, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    :goto_1
    iget-object v4, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 310
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 311
    iget-object v5, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 314
    :cond_3
    iget-object v0, v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :goto_2
    return-object v1
.end method
