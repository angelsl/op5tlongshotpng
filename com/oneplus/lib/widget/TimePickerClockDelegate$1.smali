.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 219
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    .line 223
    return-void
.end method
