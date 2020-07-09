.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1022
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumericTextView;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinute(I)V

    .line 1026
    return-void
.end method
