.class Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    .line 105
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 5
    .param p1, "spinner"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 107
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$000(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$400(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v0

    .line 109
    .local v0, "minValue":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$400(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v1

    .line 110
    .local v1, "maxValue":I
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 111
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 112
    .local v2, "newHour":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z

    .line 114
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .end local v2    # "newHour":I
    goto :goto_0

    .line 117
    :cond_1
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 118
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 119
    .restart local v2    # "newHour":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z

    .line 121
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Lcom/oneplus/lib/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 117
    .end local v2    # "newHour":I
    :cond_3
    :goto_0
    nop

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$2;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$300(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 126
    return-void
.end method
