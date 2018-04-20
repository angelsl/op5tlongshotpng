.class public Lcom/oneplus/screenshot/longshot/widget/GuideLayout;
.super Landroid/widget/RelativeLayout;
.source "GuideLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideLayout"


# instance fields
.field private mClickable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/widget/GuideLayout;->mClickable:Z

    .line 25
    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->GuideLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/widget/GuideLayout;->mClickable:Z

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideLayout;->mClickable:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method
