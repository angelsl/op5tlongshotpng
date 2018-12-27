.class Lcom/oneplus/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field delayAction:Ljava/lang/Runnable;

.field errorMsgResId:I

.field finisher:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field needRecycle:Z

.field previewWidth:I

.field previewheight:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .registers 2

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 141
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method clearImage()V
    .registers 2

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 128
    iput-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 130
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method doDelayAction()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->delayAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->delayAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 137
    :cond_9
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
