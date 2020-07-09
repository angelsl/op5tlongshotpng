.class public Lcom/oneplus/screenshot/longshot/widget/GuideLayout;
.super Landroid/widget/RelativeLayout;
.source "GuideLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideLayout"


# instance fields
.field private mClickable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideLayout;->mClickable:Z

    .line 25
    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->GuideLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 26
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideLayout;->mClickable:Z

    .line 27
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 35
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideLayout;->mClickable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
