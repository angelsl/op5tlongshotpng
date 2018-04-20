.class Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;
.super Ljava/lang/Object;
.source "TargetAnimator.java"

# interfaces
.implements Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/anim/TargetAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAnimRun"
.end annotation


# instance fields
.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/screenshot/anim/TargetAnimator;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;->mTag:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Ljava/util/Map$Entry;)V
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->-wrap0(Lcom/oneplus/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 173
    return-void
.end method
