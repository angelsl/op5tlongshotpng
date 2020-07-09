.class Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;
.super Ljava/lang/Object;
.source "OPFloatingActionButton.java"

# interfaces
.implements Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 129
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getSizeDimension()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$201(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 137
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 140
    invoke-static {v3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v4}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v4

    add-int/2addr v4, p4

    .line 139
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setPadding(IIII)V

    .line 141
    return-void
.end method
