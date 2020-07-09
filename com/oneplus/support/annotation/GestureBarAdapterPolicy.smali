.class public Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;
.super Landroid/database/ContentObserver;
.source "GestureBarAdapterPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/annotation/GestureBarAdapterPolicy$NavigationBarChangeListener;
    }
.end annotation


# static fields
.field public static final NAVIGATION_MODE:Ljava/lang/String; = "navigation_mode"

.field private static final NAV_BAR_MODE_GESTURAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GestureBarAdapterPolicy"

.field private static final URI:Landroid/net/Uri;


# instance fields
.field private mCallBack:Lcom/oneplus/support/annotation/GestureBarAdapterPolicy$NavigationBarChangeListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "content://settings/secure/navigation_mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/oneplus/support/annotation/GestureBarAdapterPolicy$NavigationBarChangeListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/oneplus/support/annotation/GestureBarAdapterPolicy$NavigationBarChangeListener;

    .line 30
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->mCallBack:Lcom/oneplus/support/annotation/GestureBarAdapterPolicy$NavigationBarChangeListener;

    .line 33
    return-void
.end method

.method public static gestureButtonEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "navigation_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "resourceId":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    .local v2, "height":I
    return v2
.end method


# virtual methods
.method public bindGestureBarAnnotation(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 44
    invoke-virtual {p0, p1}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->hasGestureBarAnnotation(Landroid/app/Activity;)Z

    move-result v0

    .line 45
    .local v0, "hasAnnotation":Z
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    :cond_0
    return-void
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public hasGestureBarAnnotation(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 36
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/support/annotation/GestureBarAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 38
    .local v1, "gestureBarAnnotation":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 40
    .end local v1    # "gestureBarAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1
    return v0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 62
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 63
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 67
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->mCallBack:Lcom/oneplus/support/annotation/GestureBarAdapterPolicy$NavigationBarChangeListener;

    if-eqz v1, :cond_0

    .line 70
    invoke-static {v0}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->gestureButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy$NavigationBarChangeListener;->onNavigationBarModeChanged(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public unbindGestureBarAnnotation(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    return-void
.end method
