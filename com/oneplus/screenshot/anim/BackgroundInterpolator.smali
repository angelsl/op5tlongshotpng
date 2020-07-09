.class public Lcom/oneplus/screenshot/anim/BackgroundInterpolator;
.super Lcom/oneplus/screenshot/anim/DropInterpolator;
.source "BackgroundInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/DropInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method
