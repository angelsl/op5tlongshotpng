.class Lcom/oneplus/lib/widget/YearPickerView;
.super Landroid/widget/FrameLayout;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;
    }
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I

.field private static final MAX_NUMBER_COUNT:I = 0x5


# instance fields
.field private final mChildSize:I

.field private mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

.field private mPicker:Lcom/oneplus/lib/widget/NumberPicker;

.field private final mViewSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_year_label_text_view:I

    sput v0, Lcom/oneplus/lib/widget/YearPickerView;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const v0, 0x1010524

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/lib/widget/YearPickerView;->ITEM_LAYOUT:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->datepicker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mViewSize:I

    .line 48
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->datepicker_year_label_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mChildSize:I

    .line 49
    sget v1, Lcom/oneplus/commonctrl/R$id;->year_picker:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/YearPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/NumberPicker;

    iput-object v1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    .line 50
    iget-object v1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->setSelectNumberCount(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public setCurrentYear()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;->onYearChanged(Lcom/oneplus/lib/widget/YearPickerView;I)V

    .line 57
    :cond_0
    return-void
.end method

.method public setOnYearSelectedListener(Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    .line 60
    iput-object p1, p0, Lcom/oneplus/lib/widget/YearPickerView;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    .line 61
    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "min"    # Ljava/util/Calendar;
    .param p2, "max"    # Ljava/util/Calendar;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 81
    .local v1, "minYear":I
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 82
    .local v0, "maxYear":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/NumberPicker;->setMinValue(I)V

    .line 83
    iget-object v2, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/NumberPicker;->setMaxValue(I)V

    .line 85
    return-void
.end method

.method public setSelectionCentered(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    return-void
.end method

.method public setYear(I)V
    .locals 1
    .param p1, "year"    # I

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/widget/YearPickerView;->mPicker:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->setValue(I)V

    .line 70
    return-void
.end method
