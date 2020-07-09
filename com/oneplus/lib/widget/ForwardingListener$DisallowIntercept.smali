.class Lcom/oneplus/lib/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ForwardingListener;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ForwardingListener;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/oneplus/lib/widget/ForwardingListener$DisallowIntercept;->this$0:Lcom/oneplus/lib/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/widget/ForwardingListener$DisallowIntercept;->this$0:Lcom/oneplus/lib/widget/ForwardingListener;

    iget-object v0, v0, Lcom/oneplus/lib/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 304
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 305
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 307
    :cond_0
    return-void
.end method
