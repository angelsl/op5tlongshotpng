.class Lcom/oneplus/lib/widget/DayPickerView$2;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DayPickerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DayPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/DayPickerView;

    .line 418
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView$2;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 427
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 421
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 422
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView$2;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/DayPickerView;->access$100(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 423
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView$2;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/DayPickerView;->access$200(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 424
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 431
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView$2;->this$0:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->access$300(Lcom/oneplus/lib/widget/DayPickerView;I)V

    .line 432
    return-void
.end method
