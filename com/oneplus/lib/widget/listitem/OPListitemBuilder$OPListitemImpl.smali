.class Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;
.super Lcom/oneplus/lib/widget/listitem/OPListitem;
.source "OPListitemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPListitemImpl"
.end annotation


# instance fields
.field private mActionBtnSize:I

.field private mActionButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconSize:I

.field private mMarginM1:I

.field private mPrimaryText:Landroid/widget/TextView;

.field private mRemainHeight:I

.field private mResources:Landroid/content/res/Resources;

.field private mSecondaryText:Landroid/widget/TextView;

.field private mStamp:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 152
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->this$0:Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    .line 153
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/listitem/OPListitem;-><init>(Landroid/content/Context;)V

    .line 136
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mResources:Landroid/content/res/Resources;

    .line 138
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIcon:Landroid/widget/ImageView;

    .line 139
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    .line 140
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    .line 141
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    .line 142
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionButton:Landroid/widget/ImageView;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIconSize:I

    .line 145
    iput v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionBtnSize:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    .line 148
    iput v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mRemainHeight:I

    .line 150
    iput-object p1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    .line 155
    invoke-direct {p0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->init()V

    .line 156
    return-void
.end method

.method private init()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mResources:Landroid/content/res/Resources;

    .line 165
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->margin_m1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->this$0:Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    invoke-static {v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->access$000(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIcon:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->listitem_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIconSize:I

    .line 170
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->addView(Landroid/view/View;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->this$0:Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    invoke-static {v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->access$100(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->listitem_primary_text_font:I

    invoke-direct {v0, v4, v2, v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->addView(Landroid/view/View;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->this$0:Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    invoke-static {v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->access$200(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->listitem_secondary_text_font:I

    invoke-direct {v0, v4, v2, v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->addView(Landroid/view/View;)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->this$0:Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    invoke-static {v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->access$300(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->listitem_stamp_font:I

    invoke-direct {v0, v4, v2, v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->addView(Landroid/view/View;)V

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->this$0:Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;

    invoke-static {v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;->access$400(Lcom/oneplus/lib/widget/listitem/OPListitemBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionButton:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->listitem_actionbutton_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionBtnSize:I

    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionBtnSize:I

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->addView(Landroid/view/View;)V

    .line 198
    :cond_5
    return-void
.end method

.method private layoutLTR(IIII)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 293
    sub-int v0, p4, p2

    .line 294
    .local v0, "itemheight":I
    move v1, p1

    .line 296
    .local v1, "currentLeft":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 297
    iget v3, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    add-int/2addr v3, p1

    .line 298
    .local v3, "left":I
    iget v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIconSize:I

    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    .line 299
    .local v5, "top":I
    add-int v6, v3, v4

    .line 300
    .local v6, "right":I
    add-int/2addr v4, v5

    .line 301
    .local v4, "bottom":I
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 302
    move v1, v6

    .line 305
    .end local v3    # "left":I
    .end local v4    # "bottom":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 306
    iget v3, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    sub-int v3, p3, v3

    .line 307
    .local v3, "right":I
    iget v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionBtnSize:I

    sub-int v5, v3, v4

    .line 308
    .local v5, "left":I
    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    .line 309
    .local v6, "top":I
    add-int/2addr v4, v6

    .line 310
    .restart local v4    # "bottom":I
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 313
    .end local v3    # "right":I
    .end local v4    # "bottom":I
    .end local v5    # "left":I
    .end local v6    # "top":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 314
    iget v3, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mRemainHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    .line 315
    .local v3, "bottom":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v3, v2

    .line 316
    .local v2, "top":I
    iget v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    add-int/2addr v4, v1

    .line 317
    .local v4, "left":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 318
    .local v5, "right":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v2, v5, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 321
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 322
    iget v3, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    add-int/2addr v3, v1

    .line 323
    .local v3, "left":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    .line 324
    .local v2, "right":I
    iget v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mRemainHeight:I

    div-int/lit8 v4, v4, 0x2

    .line 325
    .local v4, "top":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 326
    .local v5, "bottom":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v4, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 329
    .end local v2    # "right":I
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 330
    iget v3, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    sub-int v3, p3, v3

    .line 331
    .local v3, "right":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v3, v2

    .line 333
    .local v2, "left":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 334
    iget v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mRemainHeight:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .restart local v4    # "top":I
    goto :goto_0

    .line 336
    .end local v4    # "top":I
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    .line 338
    .restart local v4    # "top":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 339
    .restart local v5    # "bottom":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v4, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 342
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    :cond_5
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 279
    const-wide/16 v0, 0x0

    .line 284
    .local v0, "start":J
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/listitem/OPListitem;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 289
    return-void
.end method

.method public getActionButton()Landroid/widget/ImageView;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrimaryText()Landroid/widget/TextView;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSecondaryText()Landroid/widget/TextView;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStamp()Landroid/widget/TextView;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 263
    const-wide/16 v0, 0x0

    .line 268
    .local v0, "start":J
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->layoutLTR(IIII)V

    .line 275
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 203
    const-wide/16 v0, 0x0

    .line 208
    .local v0, "start":J
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->setMeasuredDimension(II)V

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 211
    .local v2, "itemWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 213
    .local v3, "itemHeight":I
    move v4, v2

    .line 214
    .local v4, "remaindWidth":I
    move v5, v3

    .line 216
    .local v5, "remainHeight":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIcon:Landroid/widget/ImageView;

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_0

    .line 217
    iget v8, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIconSize:I

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIconSize:I

    .line 218
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 217
    invoke-virtual {v6, v8, v9}, Landroid/widget/ImageView;->measure(II)V

    .line 220
    iget v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mIconSize:I

    sub-int v6, v4, v6

    iget v8, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    sub-int v4, v6, v8

    .line 223
    :cond_0
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 224
    iget v8, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionBtnSize:I

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionBtnSize:I

    .line 225
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 224
    invoke-virtual {v6, v8, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 226
    iget v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mActionBtnSize:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    sub-int v4, v6, v7

    .line 229
    :cond_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    const/high16 v7, -0x80000000

    if-eqz v6, :cond_2

    .line 230
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 231
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 230
    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 232
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v4, v6

    iget v8, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    sub-int v4, v6, v8

    .line 235
    :cond_2
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 236
    iget v8, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v4, v8

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 237
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 236
    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 238
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 241
    :cond_3
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 243
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mStamp:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 244
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 247
    :cond_4
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    iget v8, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mMarginM1:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v4, v8

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 248
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 247
    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->measure(II)V

    .line 249
    iget-object v6, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 252
    :cond_5
    iput v5, p0, Lcom/oneplus/lib/widget/listitem/OPListitemBuilder$OPListitemImpl;->mRemainHeight:I

    .line 258
    return-void
.end method
