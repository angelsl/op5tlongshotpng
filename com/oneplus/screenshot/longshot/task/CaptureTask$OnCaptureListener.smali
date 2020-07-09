.class public interface abstract Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
.super Ljava/lang/Object;
.source "CaptureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/task/CaptureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCaptureListener"
.end annotation


# virtual methods
.method public abstract onCaptureFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method
