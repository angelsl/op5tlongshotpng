.class public Lcom/oneplus/lib/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;,
        Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;,
        Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;,
        Lcom/oneplus/lib/widget/TimePicker$TimePickerMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MODE_CLOCK:I = 0x2

.field public static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/TimePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    sget v0, Lcom/oneplus/commonctrl/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_dialogMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 97
    .local v1, "isDialogMode":Z
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_timePickerMode:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 98
    .local v2, "requestedMode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$integer;->time_picker_mode:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    goto :goto_0

    .line 105
    :cond_0
    iput v2, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    .line 108
    :goto_0
    iget v4, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    if-eq v4, v3, :cond_1

    .line 115
    new-instance v3, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;

    move-object v5, v3

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/lib/widget/TimePickerSpinnerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    goto :goto_1

    .line 110
    :cond_1
    new-instance v3, Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    .line 112
    nop

    .line 119
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    new-instance v4, Lcom/oneplus/lib/widget/TimePicker$1;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/widget/TimePicker$1;-><init>(Lcom/oneplus/lib/widget/TimePicker;)V

    invoke-interface {v3, v4}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setAutoFillChangeListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V

    .line 129
    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 365
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 366
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 367
    return-object v0
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 482
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 484
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    sget-object v0, Lcom/oneplus/lib/widget/TimePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setDate(J)V

    .line 490
    :cond_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 299
    const-class v0, Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getAmView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 2

    .line 499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 503
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePicker;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getHourView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getMinuteView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mMode:I

    return v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->getPmView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->is24Hour()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 292
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 293
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 294
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 295
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 287
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/TimePicker;->setHour(I)V

    .line 191
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentMinute"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/TimePicker;->setMinute(I)V

    .line 212
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    .line 262
    return-void
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "hour"    # I

    .line 149
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-static {p1, v1, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setHour(I)V

    .line 150
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .line 233
    if-nez p1, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setIs24Hour(Z)V

    .line 238
    return-void
.end method

.method public setMinute(I)V
    .locals 3
    .param p1, "minute"    # I

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {p1, v1, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setMinute(I)V

    .line 170
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V
    .locals 1
    .param p1, "onTimeChangedListener"    # Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->setOnTimeChangedListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V

    .line 256
    return-void
.end method

.method public validateInput()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker;->mDelegate:Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/TimePicker$TimePickerDelegate;->validateInput()Z

    move-result v0

    return v0
.end method
