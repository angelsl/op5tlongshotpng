.class Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"

# interfaces
.implements Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    .line 297
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Lcom/oneplus/lib/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/SimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .line 300
    if-eqz p2, :cond_0

    .line 301
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->access$000(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-static {v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->access$000(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;->this$0:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-interface {v0, v1, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;->onDaySelected(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;Ljava/util/Calendar;)V

    .line 307
    :cond_0
    return-void
.end method
