.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;
.super Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 2116
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    .line 2117
    invoke-direct {p0, p2}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2118
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2146
    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_0

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


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2122
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2123
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2122
    :goto_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2129
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 2130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2131
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2132
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2133
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(I)V

    .line 2134
    const/4 v3, 0x1

    return v3

    .line 2137
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 2142
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2143
    return-void
.end method
