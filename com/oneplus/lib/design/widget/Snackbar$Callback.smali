.class public Lcom/oneplus/lib/design/widget/Snackbar$Callback;
.super Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback<",
        "Lcom/oneplus/lib/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/oneplus/lib/design/widget/Snackbar;I)V
    .locals 0
    .param p1, "transientBottomBar"    # Lcom/oneplus/lib/design/widget/Snackbar;
    .param p2, "event"    # I

    .line 111
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 91
    check-cast p1, Lcom/oneplus/lib/design/widget/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/Snackbar$Callback;->onDismissed(Lcom/oneplus/lib/design/widget/Snackbar;I)V

    return-void
.end method

.method public onShown(Lcom/oneplus/lib/design/widget/Snackbar;)V
    .locals 0
    .param p1, "sb"    # Lcom/oneplus/lib/design/widget/Snackbar;

    .line 106
    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Lcom/oneplus/lib/design/widget/Snackbar;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/Snackbar$Callback;->onShown(Lcom/oneplus/lib/design/widget/Snackbar;)V

    return-void
.end method
