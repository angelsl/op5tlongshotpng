.class Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "AnimationGriditemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AnimationGriditemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundRectOutlineProvider"
.end annotation


# instance fields
.field private mRadius:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 177
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 178
    iput p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;->mRadius:I

    .line 179
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;->mRadius:I

    int-to-float v5, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 183
    return-void
.end method
