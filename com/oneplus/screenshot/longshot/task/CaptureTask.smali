.class public Lcom/oneplus/screenshot/longshot/task/CaptureTask;
.super Landroid/os/AsyncTask;
.source "CaptureTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEGREE_0:I = 0x0

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x5a

.field private static final DEGREE_90:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "Longshot.CaptureTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRotation:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    .line 30
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 32
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mRotation:I

    .line 40
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 41
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 43
    return-void
.end method

.method private getDegreesForRotation(I)I
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_e

    .line 104
    const/4 v0, 0x0

    return v0

    .line 98
    :pswitch_5
    const/16 v0, 0x10e

    return v0

    .line 100
    :pswitch_8
    const/16 v0, 0xb4

    return v0

    .line 102
    :pswitch_b
    const/16 v0, 0x5a

    return v0

    .line 96
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private getQuality(F)I
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 92
    float-to-int v0, p1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 50
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 51
    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v2, v8

    .line 52
    .local v2, "delay":J
    const-string/jumbo v8, "Longshot.CaptureTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start , delay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2f

    .line 55
    :try_start_2c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_9f

    .line 60
    :cond_2f
    :goto_2f
    const/4 v8, 0x2

    new-array v1, v8, [F

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    aput v8, v1, v11

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    aput v8, v1, v12

    .line 61
    .local v1, "dims":[F
    iget v8, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mRotation:I

    invoke-direct {p0, v8}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getDegreesForRotation(I)I

    move-result v0

    .line 62
    .local v0, "degree":I
    if-eqz v0, :cond_69

    .line 63
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 64
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    neg-int v9, v0

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 65
    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 66
    aget v8, v1, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v1, v11

    .line 67
    aget v8, v1, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v1, v12

    .line 69
    :cond_69
    aget v8, v1, v11

    invoke-direct {p0, v8}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getQuality(F)I

    move-result v7

    .line 70
    .local v7, "w":I
    aget v8, v1, v12

    invoke-direct {p0, v8}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getQuality(F)I

    move-result v5

    .line 71
    .local v5, "h":I
    invoke-static {v7, v5}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 72
    .local v6, "screen":Landroid/graphics/Bitmap;
    const-string/jumbo v8, "Longshot.CaptureTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "capture done w = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v6

    .line 56
    .end local v0    # "degree":I
    .end local v1    # "dims":[F
    .end local v5    # "h":I
    .end local v6    # "screen":Landroid/graphics/Bitmap;
    .end local v7    # "w":I
    :catch_9f
    move-exception v4

    .local v4, "e":Ljava/lang/InterruptedException;
    goto :goto_2f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    if-eqz v0, :cond_12

    .line 79
    const-string/jumbo v0, "Longshot.CaptureTask"

    const-string/jumbo v1, "onCaptureFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;->onCaptureFinished(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_12
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 76
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
