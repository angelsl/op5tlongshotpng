.class public Lcom/oneplus/lib/widget/OPEmptyImageView;
.super Landroid/widget/ImageView;
.source "OPEmptyImageView.java"


# instance fields
.field private isSetGoneFromUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPEmptyImageView;->isSetGoneFromUser:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPEmptyImageView;->isSetGoneFromUser:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPEmptyImageView;->isSetGoneFromUser:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPEmptyImageView;->isSetGoneFromUser:Z

    .line 25
    return-void
.end method


# virtual methods
.method public isSetGoneFromUser()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPEmptyImageView;->isSetGoneFromUser:Z

    return v0
.end method

.method public setHideForNoSpace()V
    .locals 1

    .line 35
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 28
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPEmptyImageView;->isSetGoneFromUser:Z

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    return-void
.end method
