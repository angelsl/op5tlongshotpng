.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/oneplus/lib/app/OPAlertController;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    .line 1243
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1246
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1247
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1250
    :cond_0
    return-void
.end method
