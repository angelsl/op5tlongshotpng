.class Lcom/oneplus/lib/widget/OPTabLayout$1;
.super Ljava/lang/Object;
.source "OPTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/OPTabLayout;->createTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout$TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/OPTabLayout;

    .line 578
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$1;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 581
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    .line 582
    .local v0, "tabView":Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    .line 583
    return-void
.end method
