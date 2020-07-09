.class public final Lcom/oneplus/commonctrl/R$transition;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/commonctrl/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "transition"
.end annotation


# static fields
.field public static menu_enter:I

.field public static menu_exit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24875
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/commonctrl/R$transition;->menu_enter:I

    .line 24876
    sput v0, Lcom/oneplus/commonctrl/R$transition;->menu_exit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
