.class Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field lower:I

.field trans:F

.field upper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "trans"    # F

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    .line 245
    iput p2, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    .line 246
    iput p3, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    .line 247
    return-void
.end method
