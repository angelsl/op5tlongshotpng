.class public Lcom/oneplus/lib/widget/DropDownListView;
.super Lcom/oneplus/lib/widget/OPListViewCompat;
.source "DropDownListView.java"


# instance fields
.field private mClickAnimation:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 64
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/OPListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DropDownListView;->setCacheColorHint(I)V

    .line 67
    return-void
.end method

.method private clearPressedItem()V
    .locals 3

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 153
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DropDownListView;->setPressed(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->drawableStateChanged()V

    .line 157
    iget v1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mClickAnimation:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mClickAnimation:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 166
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 136
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 137
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 138
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 173
    invoke-virtual {p0, p3, p4}, Lcom/oneplus/lib/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DropDownListView;->setPressed(Z)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->layoutChildren()V

    .line 184
    iget v1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    .line 185
    iget v1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 190
    .end local v1    # "motionView":Landroid/view/View;
    :cond_2
    iput p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 194
    .local v1, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 195
    .local v3, "childY":F
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_3

    .line 196
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 198
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 203
    :cond_4
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/oneplus/lib/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 208
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->refreshDrawableState()V

    .line 213
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .line 76
    const/4 v0, 0x1

    .line 77
    .local v0, "handledEvent":Z
    const/4 v1, 0x0

    .line 79
    .local v1, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 80
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    .line 88
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 89
    .local v4, "activeIndex":I
    if-gez v4, :cond_3

    .line 90
    const/4 v0, 0x0

    .line 91
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 95
    .local v5, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 96
    .local v6, "y":I
    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->pointToPosition(II)I

    move-result v7

    .line 97
    .local v7, "position":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 98
    const/4 v1, 0x1

    .line 99
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 103
    .local v8, "child":Landroid/view/View;
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Lcom/oneplus/lib/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 104
    const/4 v0, 0x1

    .line 106
    if-ne v2, v3, :cond_5

    .line 107
    invoke-direct {p0, v8, v7}, Lcom/oneplus/lib/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    .line 113
    .end local v4    # "activeIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "position":I
    .end local v8    # "child":Landroid/view/View;
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    if-eqz v1, :cond_7

    .line 114
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DropDownListView;->clearPressedItem()V

    .line 118
    :cond_7
    if-eqz v0, :cond_9

    .line 119
    iget-object v4, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    if-nez v4, :cond_8

    .line 120
    new-instance v4, Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    invoke-direct {v4, p0}, Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    .line 122
    :cond_8
    iget-object v4, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Lcom/oneplus/support/core/widget/AutoScrollHelper;

    .line 123
    iget-object v3, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 124
    :cond_9
    iget-object v3, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;

    if-eqz v3, :cond_a

    .line 125
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/support/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Lcom/oneplus/support/core/widget/AutoScrollHelper;

    .line 128
    :cond_a
    :goto_1
    return v0
.end method

.method setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mListSelectionHidden:Z

    .line 149
    return-void
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
