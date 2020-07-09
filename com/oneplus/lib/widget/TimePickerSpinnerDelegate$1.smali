.class Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;
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

    .line 77
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 2
    .param p1, "spinner"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$000(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const/16 v0, 0xc

    const/16 v1, 0xb

    if-ne p2, v1, :cond_0

    if-eq p3, v0, :cond_1

    :cond_0
    if-ne p2, v0, :cond_2

    if-ne p3, v1, :cond_2

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z

    .line 84
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$300(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 88
    return-void
.end method
