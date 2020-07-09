.class Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;->mListener:Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    .line 15
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 19
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;->mListener:Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p3, p4, p5}, Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 22
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 27
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
