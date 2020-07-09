.class Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;
.super Lcom/oneplus/screenshot/service/GlobalNotification$Builder;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/service/GlobalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/service/GlobalNotification;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .line 153
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;-><init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    .line 155
    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 156
    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 158
    iget-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 159
    return-void
.end method


# virtual methods
.method protected getBigContentViews()Landroid/widget/RemoteViews;
    .locals 1

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentViews()Landroid/widget/RemoteViews;
    .locals 1

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSmallIcon()I
    .locals 1

    .line 168
    const v0, 0x7f0801f3

    return v0
.end method

.method protected getTicker()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
