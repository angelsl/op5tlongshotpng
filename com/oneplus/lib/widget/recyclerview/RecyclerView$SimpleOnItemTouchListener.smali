.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 8154
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 8163
    return-void
.end method

.method public onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 8159
    return-void
.end method
