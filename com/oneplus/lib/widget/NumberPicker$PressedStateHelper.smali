.class Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 2201
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2205
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2206
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .param p1, "button"    # I

    .line 2226
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2227
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2228
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2229
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2230
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .line 2233
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2234
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2235
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2236
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2237
    return-void
.end method

.method public cancel()V
    .locals 5

    .line 2212
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2213
    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2214
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2215
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2216
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    .line 2217
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2219
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    .line 2220
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2221
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2223
    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 2241
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2257
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 2268
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2269
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2270
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2269
    invoke-virtual {v0, p0, v4, v5}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2272
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1480(Lcom/oneplus/lib/widget/NumberPicker;I)Z

    .line 2273
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_1

    .line 2259
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2260
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2261
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2260
    invoke-virtual {v0, p0, v4, v5}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2263
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1280(Lcom/oneplus/lib/widget/NumberPicker;I)Z

    .line 2264
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2266
    goto :goto_1

    .line 2243
    :cond_5
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 2250
    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    .line 2251
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2245
    :cond_7
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    .line 2246
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2248
    nop

    .line 2255
    :goto_0
    nop

    .line 2279
    :goto_1
    return-void
.end method
