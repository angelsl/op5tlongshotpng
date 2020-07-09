.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenInfo"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 651
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 653
    new-instance p1, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v0, "Dump"

    invoke-direct {p1, v0, p3}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 654
    return-void
.end method
