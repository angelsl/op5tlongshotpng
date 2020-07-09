.class Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "TooltipCompatHandler"

.field private static sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

.field private static sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHoverSlop:I

.field private mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "tooltipText"    # Ljava/lang/CharSequence;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$1;-><init>(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$2;-><init>(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    .line 108
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 109
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewConfigurationCompat;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHoverSlop:I

    .line 112
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->clearAnchorPos()V

    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;
    .param p1, "x1"    # Z

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->show(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    .line 41
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    return-void
.end method

.method private cancelPendingShow()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method private clearAnchorPos()V
    .locals 1

    .line 249
    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    .line 250
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    .line 251
    return-void
.end method

.method private hide()V
    .locals 3

    .line 191
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    .line 192
    sput-object v1, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    .line 193
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->hide()V

    .line 195
    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    .line 196
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->clearAnchorPos()V

    .line 197
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 199
    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-ne v0, p0, :cond_2

    .line 203
    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method private scheduleShow()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    return-void
.end method

.method private static setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V
    .locals 1
    .param p0, "handler"    # Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    .line 209
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->cancelPendingShow()V

    .line 212
    :cond_0
    sput-object p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    .line 213
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->scheduleShow()V

    .line 216
    :cond_1
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 92
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sPendingHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v0, p0, :cond_0

    .line 93
    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    .line 95
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v2, p0, :cond_1

    .line 97
    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    .line 99
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 101
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    return-void
.end method

.method private show(Z)V
    .locals 8
    .param p1, "fromTouch"    # Z

    .line 162
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    .line 166
    sget-object v0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    if-eqz v0, :cond_1

    .line 167
    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    .line 169
    :cond_1
    sput-object p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->sActiveHandler:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    .line 171
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    .line 172
    new-instance v0, Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    .line 173
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    iget v5, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/app/appcompat/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 178
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v0, :cond_2

    .line 179
    const-wide/16 v0, 0x9c4

    .local v0, "timeout":J
    goto :goto_0

    .line 180
    .end local v0    # "timeout":J
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 182
    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .restart local v0    # "timeout":J
    goto :goto_0

    .line 184
    .end local v0    # "timeout":J
    :cond_3
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 186
    .restart local v0    # "timeout":J
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 187
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 235
    .local v0, "newAnchorX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 236
    .local v1, "newAnchorY":I
    iget v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    sub-int v2, v1, v2

    .line 237
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mHoverSlop:I

    if-gt v2, v3, :cond_0

    .line 238
    const/4 v2, 0x0

    return v2

    .line 240
    :cond_0
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    .line 241
    iput v1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    .line 242
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 128
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v0, :cond_0

    .line 129
    return v1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 133
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    return v1

    .line 136
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->clearAnchorPos()V

    .line 144
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mPopup:Lcom/oneplus/lib/app/appcompat/TooltipPopup;

    if-nez v2, :cond_4

    invoke-direct {p0, p2}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->setPendingHandler(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V

    .line 148
    :cond_4
    :goto_0
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorX:I

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->mAnchorY:I

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->show(Z)V

    .line 123
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 154
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 158
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->hide()V

    .line 159
    return-void
.end method
