.class Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentTransition;->replaceHide(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$exitingViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->access$000(Ljava/util/ArrayList;I)V

    .line 287
    return-void
.end method
