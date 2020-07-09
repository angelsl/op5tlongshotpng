.class Lcom/oneplus/lib/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 135
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceFragment$2;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment$2;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment$2;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v1}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 138
    return-void
.end method
