.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;


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

    .line 979
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V
    .locals 4
    .param p1, "view"    # Lcom/oneplus/lib/widget/NumericTextView;
    .param p2, "value"    # I
    .param p3, "isValid"    # Z
    .param p4, "isFinished"    # Z

    .line 985
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    .line 987
    .local v0, "commitCallback":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "nextFocusTarget":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 988
    .end local v0    # "commitCallback":Ljava/lang/Runnable;
    .end local v1    # "nextFocusTarget":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 989
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    .line 990
    .restart local v0    # "commitCallback":Ljava/lang/Runnable;
    const/4 v1, 0x0

    .line 995
    .restart local v1    # "nextFocusTarget":Landroid/view/View;
    :goto_1
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/NumericTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 997
    if-eqz p3, :cond_3

    .line 998
    if-eqz p4, :cond_2

    .line 1001
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1003
    if-eqz v1, :cond_3

    .line 1004
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1009
    :cond_2
    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Lcom/oneplus/lib/widget/NumericTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1012
    :cond_3
    :goto_2
    return-void

    .line 992
    .end local v0    # "commitCallback":Ljava/lang/Runnable;
    .end local v1    # "nextFocusTarget":Landroid/view/View;
    :cond_4
    return-void
.end method
