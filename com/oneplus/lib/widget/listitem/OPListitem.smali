.class public abstract Lcom/oneplus/lib/widget/listitem/OPListitem;
.super Landroid/view/ViewGroup;
.source "OPListitem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract getActionButton()Landroid/widget/ImageView;
.end method

.method public abstract getIcon()Landroid/widget/ImageView;
.end method

.method public abstract getPrimaryText()Landroid/widget/TextView;
.end method

.method public abstract getSecondaryText()Landroid/widget/TextView;
.end method

.method public abstract getStamp()Landroid/widget/TextView;
.end method
