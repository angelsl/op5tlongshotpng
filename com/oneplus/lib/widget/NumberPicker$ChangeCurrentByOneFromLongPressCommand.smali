.class Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 2327
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .line 2327
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .line 2331
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2332
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2336
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2337
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1600(Lcom/oneplus/lib/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2338
    return-void
.end method
