.class Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1360
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/AutoCompleteTextView$1;

    .line 1360
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;
    .param p1, "x1"    # Landroid/view/View$OnClickListener;

    .line 1360
    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1366
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$600(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V

    .line 1368
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1369
    :cond_0
    return-void
.end method
