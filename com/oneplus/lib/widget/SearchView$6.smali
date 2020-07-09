.class Lcom/oneplus/lib/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/SearchView;

    .line 391
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView$6;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView$6;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SearchView;->adjustDropDownSizeAndPosition()V

    .line 395
    return-void
.end method
