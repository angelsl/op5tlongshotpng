.class Lcom/oneplus/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field errorMsgResId:I

.field finishAfterSave:Z

.field finisher:Ljava/lang/Runnable;

.field finshRunnable:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field previewWidth:I

.field previewheight:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finishAfterSave:Z

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 147
    return-void
.end method

.method clearImage()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 141
    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 143
    return-void
.end method
