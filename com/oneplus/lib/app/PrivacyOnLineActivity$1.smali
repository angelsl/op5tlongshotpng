.class Lcom/oneplus/lib/app/PrivacyOnLineActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "PrivacyOnLineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/PrivacyOnLineActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/PrivacyOnLineActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/PrivacyOnLineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/PrivacyOnLineActivity;

    .line 56
    iput-object p1, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity$1;->this$0:Lcom/oneplus/lib/app/PrivacyOnLineActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 59
    const/16 v0, 0x14

    if-le p2, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity$1;->this$0:Lcom/oneplus/lib/app/PrivacyOnLineActivity;

    iget-object v0, v0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mLoadingView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity$1;->this$0:Lcom/oneplus/lib/app/PrivacyOnLineActivity;

    iget-object v0, v0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mLoadingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity$1;->this$0:Lcom/oneplus/lib/app/PrivacyOnLineActivity;

    iget-object v0, v0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mLoadingView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 66
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 67
    return-void
.end method
