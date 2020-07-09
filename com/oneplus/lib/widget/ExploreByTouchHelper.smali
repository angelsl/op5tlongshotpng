.class public abstract Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private mTempArray:Lcom/oneplus/lib/widget/IntArray;

.field private mTempGlobalRect:[I

.field private mTempParentRect:Landroid/graphics/Rect;

.field private mTempScreenRect:Landroid/graphics/Rect;

.field private mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "forView"    # Landroid/view/View;

    .line 79
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 69
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 72
    iput v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 80
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 87
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/ExploreByTouchHelper;
    .param p1, "x1"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/ExploreByTouchHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 625
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 627
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 628
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 630
    const/4 v0, 0x1

    return v0

    .line 632
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 275
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 311
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 312
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 313
    sget-object v1, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 319
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 328
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    .line 291
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 292
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 297
    return-object v0
.end method

.method private createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 342
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 346
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 413
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->ensureTempRects()V

    .line 414
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 415
    .local v0, "tempParentRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 416
    .local v1, "tempGlobalRect":[I
    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 418
    .local v2, "tempScreenRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 421
    .local v3, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 422
    sget-object v5, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 423
    sget-object v5, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 426
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 429
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 435
    sget-object v5, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 440
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v5

    .line 441
    .local v5, "actions":I
    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_5

    .line 445
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_4

    .line 451
    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 453
    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 456
    iget v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_2

    .line 457
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 458
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 460
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 461
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 465
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 466
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 467
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 471
    :cond_3
    iget-object v6, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 472
    aget v6, v1, v7

    .line 473
    .local v6, "offsetX":I
    aget v4, v1, v4

    .line 474
    .local v4, "offsetY":I
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 475
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 476
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 478
    return-object v3

    .line 446
    .end local v4    # "offsetY":I
    .end local v6    # "offsetX":I
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 436
    .end local v5    # "actions":I
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 358
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 359
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 362
    .local v1, "realNodeCount":I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 365
    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempArray:Lcom/oneplus/lib/widget/IntArray;

    if-nez v2, :cond_0

    .line 366
    new-instance v2, Lcom/oneplus/lib/widget/IntArray;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/IntArray;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempArray:Lcom/oneplus/lib/widget/IntArray;

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/IntArray;->clear()V

    .line 370
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempArray:Lcom/oneplus/lib/widget/IntArray;

    .line 371
    .local v2, "virtualViewIds":Lcom/oneplus/lib/widget/IntArray;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V

    .line 372
    if-lez v1, :cond_2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/IntArray;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_1

    .line 373
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Views cannot have both real and virtual children"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/IntArray;->size()I

    move-result v3

    .line 377
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 378
    iget-object v5, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 381
    .end local v4    # "i":I
    :cond_3
    return-object v0
.end method

.method private ensureTempRects()V
    .locals 1

    .line 482
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 485
    return-void
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .line 531
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    return v0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 542
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 543
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 544
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 547
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 548
    .end local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 545
    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    :goto_1
    return v0

    .line 551
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    if-nez v1, :cond_5

    .line 552
    return v0

    .line 556
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    if-nez v2, :cond_6

    .line 557
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 559
    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 560
    .local v2, "tempVisibleRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 561
    return v0

    .line 565
    :cond_7
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 532
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    .end local v2    # "tempVisibleRect":Landroid/graphics/Rect;
    :cond_8
    :goto_2
    return v0
.end method

.method private isAccessibilityFocused(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 574
    iget v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private manageFocusForChild(II)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I

    .line 511
    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return v0

    .line 515
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 513
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 488
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 492
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 490
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 501
    const/16 v0, 0x40

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 506
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 504
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->manageFocusForChild(II)Z

    move-result v0

    return v0
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 497
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 3
    .param p1, "virtualViewId"    # I

    .line 590
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    .line 591
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 593
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 594
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 600
    iget v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 601
    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 606
    :cond_1
    iput p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 609
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 610
    const v1, 0x8000

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 612
    const/4 v1, 0x1

    return v1

    .line 614
    :cond_2
    return v2

    .line 595
    :cond_3
    :goto_0
    return v2
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 251
    iget v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 256
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 260
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 261
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 262
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 140
    return v1

    .line 134
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-eq v0, v4, :cond_2

    .line 135
    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 136
    return v3

    .line 138
    :cond_2
    return v1

    .line 130
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 131
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 132
    if-eq v0, v4, :cond_4

    move v1, v3

    :cond_4
    return v1

    .line 124
    .end local v0    # "virtualViewId":I
    :cond_5
    :goto_0
    return v1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;Lcom/oneplus/lib/widget/ExploreByTouchHelper$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V
.end method

.method public invalidateRoot()V
    .locals 2

    .line 183
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 184
    return-void
.end method

.method public invalidateVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 200
    return-void
.end method

.method public invalidateVirtualView(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .line 221
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 223
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 224
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 226
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 227
    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 230
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 698
    return-void
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 768
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public sendEventForVirtualView(II)Z
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 162
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 167
    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_1

    .line 168
    return v0

    .line 171
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 172
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2

    .line 163
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_0
    return v0
.end method
