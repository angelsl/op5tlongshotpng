.class Lcom/oneplus/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field errorMsgResId:I

.field finisher:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field previewWidth:I

.field previewheight:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 124
    return-void
.end method

.method clearImage()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 119
    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 121
    return-void
.end method
