.class Lcom/oneplus/lib/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


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

    .line 123
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceFragment$1;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment$1;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$000(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    .line 132
    :goto_0
    return-void
.end method
