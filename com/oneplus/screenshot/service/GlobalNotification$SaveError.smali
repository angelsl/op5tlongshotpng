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
    .registers 7
    .param p1, "this$0"    # Lcom/oneplus/screenshot/service/GlobalNotification;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->this$0:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/service/GlobalNotification$Builder;-><init>(Lcom/oneplus/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    .line 159
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 160
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 161
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 162
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 163
    return-void
.end method


# virtual methods
.method protected getBigContentViews()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentViews()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSmallIcon()I
    .registers 2

    .prologue
    .line 172
    const v0, 0x7f020031

    return v0
.end method

.method protected getTicker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalNotification$SaveError;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
