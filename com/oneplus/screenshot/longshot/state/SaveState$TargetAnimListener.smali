.class Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetAnimListener"
.end annotation


# instance fields
.field private mDecor:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V
    .locals 0
    .param p2, "decor"    # Landroid/view/View;

    .line 109
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 107
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    .line 110
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    .line 111
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 125
    const-string v0, "Longshot.SaveState"

    const-string v1, "save animation end:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->stop()V

    .line 131
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 117
    const-string v0, "Longshot.SaveState"

    const-string v1, "save animation start:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
