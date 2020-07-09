.class Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentView:I

.field private final mListPosition:I

.field private final mListPositionOffset:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 735
    new-instance v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 677
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 686
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/lib/widget/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/DatePicker$1;

    .line 642
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJ)V
    .locals 12
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J

    .line 654
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 655
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJIII)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "currentView"    # I
    .param p10, "listPosition"    # I
    .param p11, "listPositionOffset"    # I

    .line 662
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 663
    iput p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 664
    iput p3, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 665
    iput p4, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 666
    iput-wide p5, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 667
    iput-wide p7, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 668
    iput p9, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 669
    iput p10, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 670
    iput p11, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 671
    return-void
.end method


# virtual methods
.method public getCurrentView()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    return v0
.end method

.method public getListPosition()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    return v0
.end method

.method public getListPositionOffset()I
    .locals 1

    .line 730
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 718
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 714
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .line 706
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .line 710
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 690
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 691
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 695
    iget-wide v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 696
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    return-void
.end method
