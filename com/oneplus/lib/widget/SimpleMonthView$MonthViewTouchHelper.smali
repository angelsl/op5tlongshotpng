.class Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;
.super Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/SimpleMonthView;Landroid/view/View;)V
    .locals 0
    .param p2, "host"    # Landroid/view/View;

    .line 1058
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 1059
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1055
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 1060
    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I

    .line 1132
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$600(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$700(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 1134
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "dd MMMM yyyy"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1137
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I

    .line 1147
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$800(Lcom/oneplus/lib/widget/SimpleMonthView;)Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1151
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1064
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, v2, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$000(Lcom/oneplus/lib/widget/SimpleMonthView;II)I

    move-result v0

    .line 1065
    .local v0, "day":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1066
    return v0

    .line 1068
    :cond_0
    const/high16 v1, -0x80000000

    return v1
.end method

.method protected getVisibleVirtualViews(Lcom/oneplus/lib/widget/IntArray;)V
    .locals 2
    .param p1, "virtualViewIds"    # Lcom/oneplus/lib/widget/IntArray;

    .line 1073
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$100(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1074
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/IntArray;->add(I)V

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    .end local v0    # "day":I
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1117
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 1122
    const/4 v0, 0x0

    return v0

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$400(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result v0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1080
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1081
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1085
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1087
    .local v0, "hasBounds":Z
    if-nez v0, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1090
    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1092
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1093
    return-void

    .line 1096
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1100
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v1, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$200(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z

    move-result v1

    .line 1101
    .local v1, "isDayEnabled":Z
    if-eqz v1, :cond_1

    .line 1102
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1105
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1107
    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->access$300(Lcom/oneplus/lib/widget/SimpleMonthView;)I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 1109
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1112
    :cond_2
    return-void
.end method
