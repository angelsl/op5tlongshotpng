.class Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;
.super Landroid/util/Property;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final TARGET_X:C = 'x'

.field public static final TARGET_Y:C = 'y'


# instance fields
.field private final mTargetDimension:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempState:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;


# direct methods
.method public constructor <init>(C)V
    .locals 3
    .param p1, "targetDimension"    # C

    .line 272
    const-class v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 267
    new-instance v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    .line 274
    iput p1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    .line 275
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
    .locals 4
    .param p1, "object"    # Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 280
    .local v0, "tempRect":Landroid/graphics/Rect;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    .line 286
    .local v1, "tempState":Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
    iget v2, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    .line 288
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    .line 289
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    .line 292
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    .line 293
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    .line 295
    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 262
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->get(Landroid/view/View;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)V
    .locals 4
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    .line 300
    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 301
    .local v0, "tempRect":Landroid/graphics/Rect;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x78

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    .line 302
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget v1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v2, :cond_0

    .line 304
    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 305
    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 307
    :cond_0
    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 308
    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 310
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 314
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v2, :cond_2

    .line 315
    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 317
    :cond_2
    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 319
    :goto_1
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 262
    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->set(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)V

    return-void
.end method
