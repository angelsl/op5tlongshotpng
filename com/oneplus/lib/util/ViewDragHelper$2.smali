.class Lcom/oneplus/lib/util/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/util/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/util/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/util/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/util/ViewDragHelper;

    .line 317
    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper$2;->this$0:Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper$2;->this$0:Lcom/oneplus/lib/util/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 321
    return-void
.end method
