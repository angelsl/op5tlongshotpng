.class Lcom/oneplus/lib/app/appcompat/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    .line 190
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$1;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$1;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->showOverflowMenu()Z

    .line 193
    return-void
.end method
