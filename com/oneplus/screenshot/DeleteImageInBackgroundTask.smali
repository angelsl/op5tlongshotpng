.class Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.DeleteImageInBackgroundTask"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 590
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 591
    iput-object p1, p0, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 592
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 585
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .registers 5
    .param p1, "params"    # [Landroid/net/Uri;

    .line 596
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    return-object v1

    .line 598
    :cond_6
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 599
    .local v0, "screenshotUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 600
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    return-object v1
.end method
