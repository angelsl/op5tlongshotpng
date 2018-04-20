.class Lcom/oneplus/screenshot/LongshotService$Finisher;
.super Ljava/lang/Object;
.source "LongshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/LongshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finisher"
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

.field final synthetic this$0:Lcom/oneplus/screenshot/LongshotService;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/LongshotService;Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/oneplus/screenshot/LongshotService;
    .param p2, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 141
    iput-object p2, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 142
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Finisher.run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotCallback;->stop()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 152
    :goto_f
    return-void

    .line 149
    :catch_10
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method
