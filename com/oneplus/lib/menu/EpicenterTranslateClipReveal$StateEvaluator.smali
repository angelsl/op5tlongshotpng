.class Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;

    .line 250
    invoke-direct {p0}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
    .param p3, "endValue"    # Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    iget v2, p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    .line 256
    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget v2, p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    .line 257
    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    iget v2, p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 250
    check-cast p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    check-cast p3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;->evaluate(FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    move-result-object p1

    return-object p1
.end method
