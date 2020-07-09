.class public Lcom/oneplus/lib/animator/MyScene;
.super Ljava/lang/Object;
.source "MyScene.java"


# instance fields
.field public duration:I

.field public endAlpha:F

.field public endX:F

.field public endY:F

.field public interpolator:Landroid/animation/TimeInterpolator;

.field public pivotType:I

.field public scaleX:F

.field public scaleY:F

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFFFILandroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "animatorView"    # Landroid/view/View;
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "endAlpha"    # F
    .param p7, "duration"    # I
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oneplus/lib/animator/MyScene;->view:Landroid/view/View;

    .line 26
    iput p2, p0, Lcom/oneplus/lib/animator/MyScene;->endX:F

    .line 27
    iput p3, p0, Lcom/oneplus/lib/animator/MyScene;->endY:F

    .line 28
    iput p4, p0, Lcom/oneplus/lib/animator/MyScene;->scaleX:F

    .line 29
    iput p5, p0, Lcom/oneplus/lib/animator/MyScene;->scaleY:F

    .line 30
    iput p6, p0, Lcom/oneplus/lib/animator/MyScene;->endAlpha:F

    .line 31
    iput p7, p0, Lcom/oneplus/lib/animator/MyScene;->duration:I

    .line 32
    iput-object p8, p0, Lcom/oneplus/lib/animator/MyScene;->interpolator:Landroid/animation/TimeInterpolator;

    .line 33
    return-void
.end method

.method public static create(Landroid/view/View;FFFFF)Lcom/oneplus/lib/animator/MyScene;
    .locals 10
    .param p0, "animatorView"    # Landroid/view/View;
    .param p1, "endX"    # F
    .param p2, "endY"    # F
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F
    .param p5, "endAlpha"    # F

    .line 154
    new-instance v9, Lcom/oneplus/lib/animator/MyScene;

    sget-object v8, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v7, 0x177

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/lib/animator/MyScene;-><init>(Landroid/view/View;FFFFFILandroid/animation/TimeInterpolator;)V

    return-object v9
.end method

.method public static create(Landroid/view/View;FFFFFI)Lcom/oneplus/lib/animator/MyScene;
    .locals 10
    .param p0, "animatorView"    # Landroid/view/View;
    .param p1, "endX"    # F
    .param p2, "endY"    # F
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F
    .param p5, "endAlpha"    # F
    .param p6, "duration"    # I

    .line 147
    new-instance v9, Lcom/oneplus/lib/animator/MyScene;

    sget-object v8, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/lib/animator/MyScene;-><init>(Landroid/view/View;FFFFFILandroid/animation/TimeInterpolator;)V

    return-object v9
.end method

.method public static create(Landroid/view/View;FFFFFILandroid/animation/TimeInterpolator;)Lcom/oneplus/lib/animator/MyScene;
    .locals 10
    .param p0, "animatorView"    # Landroid/view/View;
    .param p1, "endX"    # F
    .param p2, "endY"    # F
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F
    .param p5, "endAlpha"    # F
    .param p6, "duration"    # I
    .param p7, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 139
    new-instance v9, Lcom/oneplus/lib/animator/MyScene;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/lib/animator/MyScene;-><init>(Landroid/view/View;FFFFFILandroid/animation/TimeInterpolator;)V

    return-object v9
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/oneplus/lib/animator/MyScene;->duration:I

    return v0
.end method

.method public getEndAlpha()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/oneplus/lib/animator/MyScene;->endAlpha:F

    return v0
.end method

.method public getEndX()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/oneplus/lib/animator/MyScene;->endX:F

    return v0
.end method

.method public getEndY()F
    .locals 1

    .line 75
    iget v0, p0, Lcom/oneplus/lib/animator/MyScene;->endY:F

    return v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oneplus/lib/animator/MyScene;->interpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getPivotType()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/oneplus/lib/animator/MyScene;->pivotType:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/oneplus/lib/animator/MyScene;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/oneplus/lib/animator/MyScene;->scaleY:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/animator/MyScene;->view:Landroid/view/View;

    return-object v0
.end method

.method public setDuration(I)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "duration"    # I

    .line 52
    iput p1, p0, Lcom/oneplus/lib/animator/MyScene;->duration:I

    .line 53
    return-object p0
.end method

.method public setEndAlpha(F)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "endAlpha"    # F

    .line 106
    iput p1, p0, Lcom/oneplus/lib/animator/MyScene;->endAlpha:F

    .line 107
    return-object p0
.end method

.method public setEndX(F)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "endX"    # F

    .line 70
    iput p1, p0, Lcom/oneplus/lib/animator/MyScene;->endX:F

    .line 71
    return-object p0
.end method

.method public setEndY(F)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "endY"    # F

    .line 79
    iput p1, p0, Lcom/oneplus/lib/animator/MyScene;->endY:F

    .line 80
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 61
    iput-object p1, p0, Lcom/oneplus/lib/animator/MyScene;->interpolator:Landroid/animation/TimeInterpolator;

    .line 62
    return-object p0
.end method

.method public setPivotType(I)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "pivotType"    # I

    .line 43
    iput p1, p0, Lcom/oneplus/lib/animator/MyScene;->pivotType:I

    .line 44
    return-object p0
.end method

.method public setScaleX(F)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "scaleX"    # F

    .line 88
    iput p1, p0, Lcom/oneplus/lib/animator/MyScene;->scaleX:F

    .line 89
    return-object p0
.end method

.method public setScaleY(F)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "scaleY"    # F

    .line 97
    iput p1, p0, Lcom/oneplus/lib/animator/MyScene;->scaleY:F

    .line 98
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oneplus/lib/animator/MyScene;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 119
    iput-object p1, p0, Lcom/oneplus/lib/animator/MyScene;->view:Landroid/view/View;

    .line 120
    return-object p0
.end method
