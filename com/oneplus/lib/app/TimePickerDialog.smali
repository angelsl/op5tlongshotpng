.class public Lcom/oneplus/lib/app/TimePickerDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

.field private final mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

.field private mToggleModeSpace:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .line 96
    invoke-static {p1, p2}, Lcom/oneplus/lib/app/TimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 98
    iput-object p3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

    .line 99
    iput p4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 100
    iput p5, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialMinute:I

    .line 101
    iput-boolean p6, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mIs24HourView:Z

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/lib/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "themeContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_time_picker_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 107
    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Lcom/oneplus/lib/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Lcom/oneplus/lib/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    sget v3, Lcom/oneplus/commonctrl/R$id;->timePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/TimePicker;

    iput-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    .line 111
    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 112
    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget v4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 113
    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    iget v4, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 114
    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/TimePicker;->setOnTimeChangedListener(Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;)V

    .line 115
    sget v3, Lcom/oneplus/commonctrl/R$id;->time_picker_space:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    iput-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mToggleModeSpace:Landroid/widget/Space;

    .line 116
    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mToggleModeSpace:Landroid/widget/Space;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Space;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .line 65
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/TimePickerDialog;)Lcom/oneplus/lib/widget/TimePicker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/TimePickerDialog;

    .line 24
    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 71
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101049e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 72
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1

    .line 74
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return p1
.end method


# virtual methods
.method public getTimePicker()Lcom/oneplus/lib/widget/TimePicker;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 148
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimeSetListener:Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_2

    .line 154
    iget-object v1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    .line 155
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 154
    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/TimePickerDialog;->cancel()V

    .line 162
    :cond_2
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 186
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "hour":I
    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, "minute":I
    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 190
    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 191
    iget-object v2, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 192
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 177
    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, "state":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    iget-object v1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/TimePicker;->is24HourView()Z

    move-result v1

    const-string v2, "is24hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    return-object v0
.end method

.method public onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/lib/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 130
    return-void
.end method

.method public show()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/app/TimePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/TimePickerDialog$1;-><init>(Lcom/oneplus/lib/app/TimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/app/TimePickerDialog;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 173
    return-void
.end method
