.class Lcom/oneplus/lib/app/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lcom/oneplus/lib/widget/DatePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/DatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/DatePickerDialog;

    .line 232
    iput-object p1, p0, Lcom/oneplus/lib/app/DatePickerDialog$2;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 2
    .param p1, "valid"    # Z

    .line 235
    iget-object v0, p0, Lcom/oneplus/lib/app/DatePickerDialog$2;->this$0:Lcom/oneplus/lib/app/DatePickerDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 236
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    :cond_0
    return-void
.end method
