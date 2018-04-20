.class Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;
.super Ljava/util/HashMap;
.source "TargetAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/anim/TargetAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropSetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/reflect/Method;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;


# direct methods
.method private constructor <init>(Lcom/oneplus/screenshot/anim/TargetAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/screenshot/anim/TargetAnimator;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/screenshot/anim/TargetAnimator;
    .param p2, "-this1"    # Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;)V

    return-void
.end method
