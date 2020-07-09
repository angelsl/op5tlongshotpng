.class Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 2360
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2364
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->performLongClick()Z

    .line 2365
    return-void
.end method
