.class public interface abstract Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionCompatDelegate"
.end annotation


# virtual methods
.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/oneplus/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/oneplus/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method
