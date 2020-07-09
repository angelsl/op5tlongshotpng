.class Lcom/oneplus/lib/widget/actionbar/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 1431
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1434
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->collapseActionView()V

    .line 1435
    return-void
.end method
