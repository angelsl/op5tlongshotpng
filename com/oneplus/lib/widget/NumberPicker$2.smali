.class Lcom/oneplus/lib/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 691
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 693
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$000(Lcom/oneplus/lib/widget/NumberPicker;)V

    .line 694
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/oneplus/commonctrl/R$id;->increment:I

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v2, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$300(Lcom/oneplus/lib/widget/NumberPicker;ZJ)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$2;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$300(Lcom/oneplus/lib/widget/NumberPicker;ZJ)V

    .line 700
    :goto_0
    return v2
.end method
