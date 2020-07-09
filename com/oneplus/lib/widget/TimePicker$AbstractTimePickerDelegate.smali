.class abstract Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mDelegator:Lcom/oneplus/lib/widget/TimePicker;

.field protected final mLocale:Ljava/util/Locale;

.field protected mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Lcom/oneplus/lib/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    .line 383
    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 384
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 385
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 408
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 410
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public setAutoFillChangeListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    .line 394
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    .line 395
    return-void
.end method

.method public setDate(J)V
    .locals 2
    .param p1, "date"    # J

    .line 399
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 400
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 401
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->setHour(I)V

    .line 402
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->setMinute(I)V

    .line 403
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    .line 389
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    .line 390
    return-void
.end method
