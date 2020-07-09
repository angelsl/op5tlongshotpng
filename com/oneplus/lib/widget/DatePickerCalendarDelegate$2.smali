.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    .line 209
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYearChanged(Lcom/oneplus/lib/widget/YearPickerView;I)V
    .locals 5
    .param p1, "view"    # Lcom/oneplus/lib/widget/YearPickerView;
    .param p2, "year"    # I

    .line 217
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v0, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 218
    .local v0, "day":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v2, v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 219
    .local v2, "month":I
    invoke-static {v2, p2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result v3

    .line 220
    .local v3, "daysInMonth":I
    if-le v0, v3, :cond_0

    .line 221
    iget-object v4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v4, v4, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v1, v1, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 225
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-static {v1, v4, v4}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V

    .line 228
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V

    .line 231
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$200(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 232
    return-void
.end method
