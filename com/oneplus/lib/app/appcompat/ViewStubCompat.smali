.class public final Lcom/oneplus/lib/app/appcompat/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Lcom/oneplus/lib/app/appcompat/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mLayoutResource:I

    .line 40
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 43
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflatedId:I

    .line 44
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mLayoutResource:I

    .line 46
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->setId(I)V

    .line 47
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->setVisibility(I)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->setWillNotDraw(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 140
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 135
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 136
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 7

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 179
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 180
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_4

    .line 181
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 183
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .local v2, "factory":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 186
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 188
    .restart local v2    # "factory":Landroid/view/LayoutInflater;
    :goto_0
    iget v3, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mLayoutResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 191
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflatedId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 192
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 195
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 196
    .local v4, "index":I
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 199
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_2

    .line 200
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 205
    :goto_1
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 207
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflateListener:Lcom/oneplus/lib/app/appcompat/ViewStubCompat$OnInflateListener;

    if-eqz v6, :cond_3

    .line 208
    invoke-interface {v6, p0, v3}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat$OnInflateListener;->onInflate(Lcom/oneplus/lib/app/appcompat/ViewStubCompat;Landroid/view/View;)V

    .line 211
    :cond_3
    return-object v3

    .line 213
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "index":I
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewStub must have a valid layoutResource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->setMeasuredDimension(II)V

    .line 131
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .param p1, "inflatedId"    # I

    .line 78
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflatedId:I

    .line 79
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 118
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 119
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I

    .line 110
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mLayoutResource:I

    .line 111
    return-void
.end method

.method public setOnInflateListener(Lcom/oneplus/lib/app/appcompat/ViewStubCompat$OnInflateListener;)V
    .locals 0
    .param p1, "inflateListener"    # Lcom/oneplus/lib/app/appcompat/ViewStubCompat$OnInflateListener;

    .line 229
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflateListener:Lcom/oneplus/lib/app/appcompat/ViewStubCompat$OnInflateListener;

    .line 230
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 154
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 156
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .end local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 159
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->inflate()Landroid/view/View;

    .line 167
    :cond_3
    :goto_0
    return-void
.end method
