.class Lcom/oneplus/lib/app/OPNumberPickerDialog$1;
.super Ljava/lang/Object;
.source "OPNumberPickerDialog.java"

# interfaces
.implements Lcom/oneplus/lib/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPNumberPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPNumberPickerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/OPNumberPickerDialog;

    .line 122
    iput-object p1, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;->this$0:Lcom/oneplus/lib/app/OPNumberPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oneplus/lib/widget/NumberPicker;II)V
    .locals 1
    .param p1, "picker"    # Lcom/oneplus/lib/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 125
    iget-object v0, p0, Lcom/oneplus/lib/app/OPNumberPickerDialog$1;->this$0:Lcom/oneplus/lib/app/OPNumberPickerDialog;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPNumberPickerDialog;->access$000(Lcom/oneplus/lib/app/OPNumberPickerDialog;)V

    .line 126
    return-void
.end method
