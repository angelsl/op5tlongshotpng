.class abstract Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/oneplus/lib/widget/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDate:Ljava/util/Calendar;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Lcom/oneplus/lib/widget/DatePicker;

.field protected mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

.field protected mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    .line 578
    iput-object p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 580
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 581
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFormattedCurrentDate()Ljava/lang/String;
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 626
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 630
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 620
    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 622
    :cond_0
    return-void
.end method

.method public setAutoFillChangeListener(Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 597
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 598
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 584
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 586
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 588
    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 592
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    .line 593
    return-void
.end method

.method public setValidationCallback(Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    .line 602
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;

    .line 603
    return-void
.end method

.method public updateDate(J)V
    .locals 4
    .param p1, "date"    # J

    .line 607
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 608
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 609
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 610
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 609
    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->updateDate(III)V

    .line 611
    return-void
.end method
