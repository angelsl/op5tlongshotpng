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
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;

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
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;->this$0:Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->access$100(Lcom/oneplus/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 173
    return-void
.end method
