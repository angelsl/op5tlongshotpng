.class Lcom/oneplus/lib/preference/PreferenceActivity$2;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .line 654
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$2;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 656
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity$2;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setResult(I)V

    .line 657
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity$2;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->finish()V

    .line 658
    return-void
.end method
