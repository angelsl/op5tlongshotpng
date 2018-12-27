.class Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;
.super Ljava/lang/Object;
.source "SaveState.java"

# interfaces
.implements Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewLoader"
.end annotation


# instance fields
.field private mDecor:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V
    .registers 3
    .param p2, "decor"    # Landroid/view/View;

    .line 114
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;->mDecor:Landroid/view/View;

    .line 115
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;->mDecor:Landroid/view/View;

    .line 116
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .line 120
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;->mDecor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
