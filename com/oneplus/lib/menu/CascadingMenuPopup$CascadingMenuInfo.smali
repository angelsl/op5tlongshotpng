.class Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CascadingMenuInfo"
.end annotation


# instance fields
.field public final menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field public final position:I

.field public final window:Lcom/oneplus/lib/menu/MenuPopupWindow;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/MenuPopupWindow;Lcom/oneplus/lib/menu/MenuBuilder;I)V
    .locals 0
    .param p1, "window"    # Lcom/oneplus/lib/menu/MenuPopupWindow;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p3, "position"    # I

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    .line 771
    iput-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 772
    iput p3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    .line 773
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
