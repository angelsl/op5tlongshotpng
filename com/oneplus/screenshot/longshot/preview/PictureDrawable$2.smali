.class Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$2;
.super Ljava/lang/Object;
.source "PictureDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    .line 108
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$2;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$2;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->invalidateSelf()V

    .line 112
    return-void
.end method
