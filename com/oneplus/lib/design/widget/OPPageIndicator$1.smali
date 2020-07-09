.class Lcom/oneplus/lib/design/widget/OPPageIndicator$1;
.super Ljava/lang/Object;
.source "OPPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/OPPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPPageIndicator;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/OPPageIndicator;

    .line 228
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;->this$0:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;->this$0:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->access$002(Lcom/oneplus/lib/design/widget/OPPageIndicator;Z)Z

    .line 233
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;->this$0:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->access$100(Lcom/oneplus/lib/design/widget/OPPageIndicator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;->this$0:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->access$100(Lcom/oneplus/lib/design/widget/OPPageIndicator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->access$200(Lcom/oneplus/lib/design/widget/OPPageIndicator;I)V

    .line 236
    :cond_0
    return-void
.end method
