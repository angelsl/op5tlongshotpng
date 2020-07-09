.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    .line 1029
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focused"    # Z

    .line 1032
    if-eqz p2, :cond_4

    .line 1033
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1034
    .local v0, "id":I
    sget v1, Lcom/oneplus/commonctrl/R$id;->am_label:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1036
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$id;->pm_label:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1037
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1038
    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$id;->hours:I

    if-ne v0, v1, :cond_2

    .line 1039
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v2, v3, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 1040
    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$id;->minutes:I

    if-ne v0, v1, :cond_3

    .line 1041
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v3, v3, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V

    .line 1046
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    goto :goto_1

    .line 1043
    :cond_3
    return-void

    .line 1048
    .end local v0    # "id":I
    :cond_4
    :goto_1
    return-void
.end method
