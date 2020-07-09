.class public Lcom/oneplus/lib/widget/OPListViewCompat;
.super Landroid/widget/ListView;
.source "OPListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1

.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/OPListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionLeftPadding:I

    .line 34
    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionTopPadding:I

    .line 35
    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionRightPadding:I

    .line 36
    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionBottomPadding:I

    .line 56
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 57
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "drawSelectorOnTop":Z
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 99
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 128
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPListViewCompat;->setSelectorEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->updateSelectorStateCompat()V

    .line 90
    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 147
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 151
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 152
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 153
    if-eqz p2, :cond_1

    .line 154
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 155
    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 160
    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 161
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 165
    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    .line 168
    :cond_3
    return p1

    .line 166
    :cond_4
    :goto_2
    return v1

    .line 170
    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    .line 173
    :cond_6
    return p1

    .line 171
    :cond_7
    :goto_3
    return v1

    .line 148
    .end local v2    # "count":I
    :cond_8
    :goto_4
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 261
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingTop()I

    move-result v2

    .line 262
    .local v2, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingBottom()I

    move-result v3

    .line 263
    .local v3, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingLeft()I

    move-result v4

    .line 264
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingRight()I

    move-result v5

    .line 265
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getDividerHeight()I

    move-result v6

    .line 266
    .local v6, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 268
    .local v7, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 270
    .local v8, "adapter":Landroid/widget/ListAdapter;
    if-nez v8, :cond_0

    .line 271
    add-int v9, v2, v3

    return v9

    .line 275
    :cond_0
    add-int v9, v2, v3

    .line 276
    .local v9, "returnedHeight":I
    if-lez v6, :cond_1

    if-eqz v7, :cond_1

    .line 277
    move v11, v6

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 281
    .local v11, "dividerHeight":I
    :goto_0
    const/4 v12, 0x0

    .line 283
    .local v12, "prevHeightWithoutPartialChild":I
    const/4 v13, 0x0

    .line 284
    .local v13, "child":Landroid/view/View;
    const/4 v14, 0x0

    .line 285
    .local v14, "viewType":I
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    .line 286
    .local v15, "count":I
    const/16 v16, 0x0

    move v10, v14

    move v14, v12

    move v12, v9

    move/from16 v9, v16

    .local v9, "i":I
    .local v10, "viewType":I
    .local v12, "returnedHeight":I
    .local v14, "prevHeightWithoutPartialChild":I
    :goto_1
    if-ge v9, v15, :cond_9

    .line 287
    move/from16 v17, v2

    .end local v2    # "paddingTop":I
    .local v17, "paddingTop":I
    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 288
    .local v2, "newType":I
    if-eq v2, v10, :cond_2

    .line 289
    const/4 v13, 0x0

    .line 290
    move v10, v2

    .line 292
    :cond_2
    move/from16 v18, v2

    move-object/from16 v2, p0

    .end local v2    # "newType":I
    .local v18, "newType":I
    invoke-interface {v8, v9, v13, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 296
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 298
    .local v19, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v19, :cond_3

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 300
    .end local v19    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v13, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 298
    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    move-object/from16 v2, v19

    .line 303
    .end local v19    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    move/from16 v19, v3

    .end local v3    # "paddingBottom":I
    .local v19, "paddingBottom":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 304
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v20, v2

    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "childLp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    .local v2, "heightMeasureSpec":I
    goto :goto_3

    .line 307
    .end local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move-object/from16 v20, v2

    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 309
    .local v3, "heightMeasureSpec":I
    :goto_3
    move/from16 v2, p1

    invoke-virtual {v13, v2, v3}, Landroid/view/View;->measure(II)V

    .line 313
    invoke-virtual {v13}, Landroid/view/View;->forceLayout()V

    .line 315
    if-lez v9, :cond_5

    .line 317
    add-int/2addr v12, v11

    .line 320
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v12, v12, v21

    .line 322
    if-lt v12, v0, :cond_7

    .line 328
    if-ltz v1, :cond_6

    if-le v9, v1, :cond_6

    if-lez v14, :cond_6

    if-eq v12, v0, :cond_6

    .line 329
    move/from16 v16, v14

    goto :goto_4

    .line 330
    :cond_6
    move/from16 v16, v0

    .line 325
    :goto_4
    return v16

    .line 333
    :cond_7
    if-ltz v1, :cond_8

    if-lt v9, v1, :cond_8

    .line 334
    move v14, v12

    .line 286
    .end local v3    # "heightMeasureSpec":I
    .end local v18    # "newType":I
    .end local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    goto :goto_1

    .line 340
    .end local v9    # "i":I
    .end local v17    # "paddingTop":I
    .end local v19    # "paddingBottom":I
    .local v2, "paddingTop":I
    .local v3, "paddingBottom":I
    :cond_9
    return v12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/OPListViewCompat;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mMotionPosition:I

    .line 109
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 208
    .local v0, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 212
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 213
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 214
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 220
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 221
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "isChildViewEnabled":Z
    :cond_1
    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->refreshDrawableState()V

    .line 229
    :cond_2
    return-void
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 189
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 191
    .local v3, "manageState":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 195
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V

    .line 197
    if-eqz v3, :cond_3

    .line 198
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 199
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 200
    .local v5, "x":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 201
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 202
    invoke-static {v0, v5, v6}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 204
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3
    return-void
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 182
    invoke-static {v0, p3, p4}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 184
    :cond_0
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 65
    if-eqz p1, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 67
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v0, "padding":Landroid/graphics/Rect;
    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 78
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionLeftPadding:I

    .line 79
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionTopPadding:I

    .line 80
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionRightPadding:I

    .line 81
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionBottomPadding:I

    .line 82
    return-void
.end method

.method protected setSelectorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 344
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    .line 347
    :cond_0
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected updateSelectorStateCompat()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->shouldShowSelectorCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 117
    :cond_0
    return-void
.end method
