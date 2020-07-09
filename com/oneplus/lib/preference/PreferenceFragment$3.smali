.class Lcom/oneplus/lib/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 408
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceFragment$3;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 412
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment$3;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v1, v0, Lcom/oneplus/lib/preference/Preference;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment$3;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v1}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 415
    .local v1, "selectedView":Landroid/view/View;
    move-object v2, v0

    check-cast v2, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v2, v1, p2, p3}, Lcom/oneplus/lib/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 418
    .end local v1    # "selectedView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
