.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;


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

    .line 187
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Lcom/oneplus/lib/widget/DayPickerView;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "view"    # Lcom/oneplus/lib/widget/DayPickerView;
    .param p2, "day"    # Ljava/util/Calendar;

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    iget-object v0, v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V

    .line 192
    return-void
.end method
