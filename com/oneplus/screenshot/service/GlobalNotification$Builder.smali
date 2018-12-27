.class abstract Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
.super Ljava/lang/Object;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/service/GlobalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Builder"
.end annotation


# instance fields
.field protected mBuilder:Landroid/app/Notification$Builder;

.field protected mPreview:Landroid/graphics/Bitmap;

.field protected mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/oneplus/screenshot/service/GlobalNotification;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .line 100
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    .line 97
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mResources:Landroid/content/res/Resources;

    .line 98
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    .line 101
    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    .line 102
    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mResources:Landroid/content/res/Resources;

    .line 103
    new-instance v0, Landroid/app/Notification$Builder;

    # getter for: Lcom/oneplus/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/oneplus/screenshot/service/GlobalNotification;->access$000(Lcom/oneplus/screenshot/service/GlobalNotification;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getTicker()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getSmallIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    .line 106
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 5

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getContentViews()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 111
    .local v1, "content":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->getBigContentViews()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 112
    .local v2, "bigContent":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->onBuild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 113
    if-eqz v1, :cond_13

    .line 114
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 116
    :cond_13
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 117
    if-eqz v2, :cond_1d

    .line 118
    iput-object v2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 120
    :cond_1d
    return-object v0
.end method

.method protected abstract getBigContentViews()Landroid/widget/RemoteViews;
.end method

.method protected abstract getContentViews()Landroid/widget/RemoteViews;
.end method

.method protected getSmallIcon()I
    .registers 2

    .line 128
    const v0, 0x7f020027

    return v0
.end method

.method protected getTicker()Ljava/lang/String;
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBuild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 3
    .param p1, "content"    # Landroid/widget/RemoteViews;
    .param p2, "bigContent"    # Landroid/widget/RemoteViews;

    .line 132
    return-void
.end method

.method protected setBigIcon(Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "bigContent"    # Landroid/widget/RemoteViews;

    .line 143
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    const v1, 0x7f0b001f

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_13

    .line 146
    :cond_d
    const v0, 0x7f020027

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 148
    :goto_13
    return-void
.end method

.method protected setIcon(Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "content"    # Landroid/widget/RemoteViews;

    .line 135
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    const v1, 0x7f0b0015

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_13

    .line 138
    :cond_d
    const v0, 0x7f020027

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 140
    :goto_13
    return-void
.end method
