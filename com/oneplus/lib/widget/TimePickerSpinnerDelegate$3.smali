.class Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 140
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 143
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$100(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$102(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;Z)Z

    .line 144
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;->access$300(Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;)V

    .line 146
    return-void
.end method
