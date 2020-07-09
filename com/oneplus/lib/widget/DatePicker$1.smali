.class Lcom/oneplus/lib/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/DatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/DatePicker;

    .line 164
    iput-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$1;->this$0:Lcom/oneplus/lib/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$1;->this$0:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 170
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$1;->this$0:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 172
    .end local v0    # "afm":Landroid/view/autofill/AutofillManager;
    :cond_0
    return-void
.end method
