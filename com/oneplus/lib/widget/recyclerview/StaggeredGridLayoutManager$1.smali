.class Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .line 199
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->access$100(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z

    .line 203
    return-void
.end method
