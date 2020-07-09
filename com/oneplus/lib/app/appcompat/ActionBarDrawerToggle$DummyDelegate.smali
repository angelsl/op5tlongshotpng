.class Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DummyDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    .line 655
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .line 679
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 0
    .param p1, "contentDescRes"    # I

    .line 665
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 660
    return-void
.end method
