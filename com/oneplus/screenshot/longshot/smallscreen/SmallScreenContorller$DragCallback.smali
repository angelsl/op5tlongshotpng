.class public Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;
.super Ljava/lang/Object;
.source "SmallScreenContorller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Z)V
    .locals 0
    .param p1, "isDrop"    # Z

    .line 57
    return-void
.end method

.method public onDragStart()V
    .locals 0

    .line 53
    return-void
.end method
