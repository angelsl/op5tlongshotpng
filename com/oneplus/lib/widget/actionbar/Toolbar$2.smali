.class Lcom/oneplus/lib/widget/actionbar/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/actionbar/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 153
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->showOverflowMenu()Z

    .line 156
    return-void
.end method
