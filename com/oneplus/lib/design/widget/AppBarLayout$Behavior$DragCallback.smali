.class public abstract Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
.super Ljava/lang/Object;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DragCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canDrag(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .param p1    # Lcom/oneplus/lib/design/widget/AppBarLayout;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method
