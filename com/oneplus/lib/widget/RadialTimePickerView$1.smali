.class Lcom/oneplus/lib/widget/RadialTimePickerView$1;
.super Landroid/util/FloatProperty;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/oneplus/lib/widget/RadialTimePickerView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/RadialTimePickerView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p2, "x0"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/oneplus/lib/widget/RadialTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oneplus/lib/widget/RadialTimePickerView;)Ljava/lang/Float;
    .locals 1
    .param p1, "radialTimePickerView"    # Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 130
    invoke-static {p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$000(Lcom/oneplus/lib/widget/RadialTimePickerView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView$1;->get(Lcom/oneplus/lib/widget/RadialTimePickerView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/oneplus/lib/widget/RadialTimePickerView;F)V
    .locals 0
    .param p1, "object"    # Lcom/oneplus/lib/widget/RadialTimePickerView;
    .param p2, "value"    # F

    .line 135
    invoke-static {p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->access$002(Lcom/oneplus/lib/widget/RadialTimePickerView;F)F

    .line 136
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->invalidate()V

    .line 137
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 127
    check-cast p1, Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView$1;->setValue(Lcom/oneplus/lib/widget/RadialTimePickerView;F)V

    return-void
.end method
