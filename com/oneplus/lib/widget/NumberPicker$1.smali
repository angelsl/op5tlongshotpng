.class Lcom/oneplus/lib/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 679
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 681
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$000(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 682
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/oneplus/commonctrl/R$id;->increment:I

    if-ne v0, v1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 688
    :goto_0
    return-void
.end method
