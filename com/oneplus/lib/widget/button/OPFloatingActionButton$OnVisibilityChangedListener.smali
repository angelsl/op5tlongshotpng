.class public abstract Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;
.super Ljava/lang/Object;
.source "OPFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnVisibilityChangedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 79
    return-void
.end method

.method public onShown(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 71
    return-void
.end method
