.class Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "OPRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;Lcom/oneplus/lib/widget/button/OPRadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/button/OPRadioGroup$1;

    .line 371
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 371
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 379
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcom/oneplus/lib/widget/button/OPRadioButton;

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 382
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 383
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 384
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 386
    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    .line 387
    invoke-static {v2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->access$700(Lcom/oneplus/lib/widget/button/OPRadioGroup;)Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    move-result-object v2

    .line 386
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setOnCheckedChangeWidgetListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V

    .line 390
    .end local v0    # "id":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 391
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 393
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 399
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/oneplus/lib/widget/button/OPRadioButton;

    if-eqz v0, :cond_0

    .line 400
    move-object v0, p2

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setOnCheckedChangeWidgetListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 404
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 406
    :cond_1
    return-void
.end method
