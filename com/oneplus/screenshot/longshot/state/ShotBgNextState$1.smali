.class Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;
.super Ljava/lang/Object;
.source "ShotBgNextState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    .line 45
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->getTopBase()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget v1, v1, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mOffset:I

    sub-int/2addr v0, v1

    .line 49
    .local v0, "top":I
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v2, v2, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget v2, v2, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mOffset:I

    sub-int/2addr v1, v2

    .line 50
    .local v1, "bottom":I
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 51
    .local v2, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v4, v4, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4, v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 53
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$200(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$100(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 53
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
