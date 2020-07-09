.class Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "OPProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPProgressBar;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/OPProgressBar$1;

    .line 1267
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1269
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    monitor-enter v0

    .line 1270
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1271
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1272
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v3}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    .line 1273
    .local v3, "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    iget v5, v3, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    iget v6, v3, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    iget-boolean v7, v3, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    const/4 v8, 0x1

    iget-boolean v9, v3, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->animate:Z

    invoke-static/range {v4 .. v9}, Lcom/oneplus/lib/widget/OPProgressBar;->access$200(Lcom/oneplus/lib/widget/OPProgressBar;IIZZZ)V

    .line 1274
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->recycle()V

    .line 1271
    .end local v3    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1276
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v2}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1277
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->access$302(Lcom/oneplus/lib/widget/OPProgressBar;Z)Z

    .line 1278
    nop

    .end local v1    # "count":I
    monitor-exit v0

    .line 1279
    return-void

    .line 1278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
