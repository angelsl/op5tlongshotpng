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
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
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

.field private mIsFirst:Z

.field private mIsNavgationBarVisiable:Z

.field private mIsStatusbarVisiable:Z

.field private mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRotation:I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/os/IBinder;ZZZ)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "windowToekn"    # Landroid/os/IBinder;
    .param p5, "isFirst"    # Z
    .param p6, "isStatusbarVisiable"    # Z
    .param p7, "isNavgationBarVisiable"    # Z

    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 40
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mRotation:I

    .line 43
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    .line 45
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    .line 46
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    .line 53
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 54
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 57
    iput-object p4, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    .line 58
    iput-boolean p5, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    .line 59
    iput-boolean p6, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    .line 60
    iput-boolean p7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureTask , mIsFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.CaptureTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private getDegreesForRotation(I)I
    .locals 1
    .param p1, "value"    # I

    .line 175
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 183
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_0
    const/16 v0, 0x5a

    return v0

    .line 179
    :cond_1
    const/16 v0, 0xb4

    return v0

    .line 177
    :cond_2
    const/16 v0, 0x10e

    return v0
.end method

.method private getNavigationBarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 147
    .local v0, "navigationbarHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 148
    .local v1, "width":I
    move v2, v0

    .line 149
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    .line 150
    .local v3, "start":I
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 152
    .local v4, "screen":Landroid/graphics/Bitmap;
    return-object v4
.end method

.method private getQuality(F)I
    .locals 1
    .param p1, "size"    # F

    .line 171
    float-to-int v0, p1

    return v0
.end method

.method private getStatusbarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 129
    if-nez p1, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 133
    .local v0, "statusbarHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 134
    .local v1, "width":I
    move v2, v0

    .line 135
    .local v2, "height":I
    const/4 v3, 0x0

    .line 136
    .local v3, "start":I
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 138
    .local v4, "screen":Landroid/graphics/Bitmap;
    return-object v4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 70
    move-object/from16 v1, p0

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 72
    .local v2, "startTime":J
    const/4 v4, 0x0

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    .line 73
    .local v5, "delay":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 74
    .local v7, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-lez v0, :cond_0

    .line 76
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 81
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start , delay:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Longshot.CaptureTask"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "hwBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v9, v4, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    .local v9, "crop":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 98
    .local v10, "width":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 99
    .local v11, "height":I
    const-wide/16 v12, 0x8

    const-string v14, "Longshot.capture"

    invoke-static {v12, v13, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 102
    invoke-static {v9, v10, v11, v4}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 105
    const-string v14, "Longshot.hwBitmap.copy"

    invoke-static {v12, v13, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v14, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 107
    .local v4, "screen":Landroid/graphics/Bitmap;
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    const/4 v12, 0x0

    .line 110
    .local v12, "statusbarCache":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 111
    .local v13, "navigationbarCache":Landroid/graphics/Bitmap;
    iget-boolean v14, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    if-eqz v14, :cond_2

    .line 112
    iget-boolean v14, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    if-eqz v14, :cond_1

    .line 113
    invoke-direct {v1, v4}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getStatusbarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 115
    :cond_1
    iget-boolean v14, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    if-eqz v14, :cond_2

    .line 116
    invoke-direct {v1, v4}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getNavigationBarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 119
    :cond_2
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 123
    .local v14, "endTime":J
    move-object/from16 v16, v0

    .end local v0    # "hwBitmap":Landroid/graphics/Bitmap;
    .local v16, "hwBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "screen":Landroid/graphics/Bitmap;
    .local v17, "screen":Landroid/graphics/Bitmap;
    const-string v4, "capture done w = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mWindowToken:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cost time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v5

    .end local v5    # "delay":J
    .local v18, "delay":J
    sub-long v4, v14, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v7
.end method

.method protected onCancelled()V
    .locals 0

    .line 165
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "Longshot.CaptureTask"

    const-string v1, "onCaptureFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;->onCaptureFinished(Ljava/util/List;)V

    .line 161
    :cond_0
    return-void
.end method
