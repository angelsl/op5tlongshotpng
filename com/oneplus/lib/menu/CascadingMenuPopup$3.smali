.class Lcom/oneplus/lib/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/menu/CascadingMenuPopup;

    .line 107
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 8
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 120
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 123
    const/4 v0, -0x1

    .line 124
    .local v0, "menuIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v2, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 125
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v3, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 126
    move v0, v1

    .line 127
    goto :goto_1

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 132
    return-void

    .line 136
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 137
    .local v1, "nextIndex":I
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v2, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v2, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .local v2, "nextInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_2

    .line 140
    .end local v2    # "nextInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_3
    const/4 v2, 0x0

    .line 143
    .restart local v2    # "nextInfo":Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_2
    new-instance v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;

    invoke-direct {v3, p0, v2, p2, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup$3;Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 162
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    .line 163
    .local v4, "uptimeMillis":J
    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v6, v6, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 164
    return-void
.end method

.method public onItemHoverExit(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 113
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
