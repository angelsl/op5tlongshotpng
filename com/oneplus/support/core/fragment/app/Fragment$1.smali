.class Lcom/oneplus/support/core/fragment/app/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/Fragment;->startPostponedEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/support/core/fragment/app/Fragment;

    .line 2244
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$1;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2247
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$1;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->access$800(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    .line 2248
    return-void
.end method
