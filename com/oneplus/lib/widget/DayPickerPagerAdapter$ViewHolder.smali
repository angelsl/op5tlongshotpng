.class Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

.field public final container:Landroid/view/View;

.field public final position:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/oneplus/lib/widget/SimpleMonthView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/View;
    .param p3, "calendar"    # Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    .line 317
    iput-object p2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 318
    iput-object p3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 319
    return-void
.end method
