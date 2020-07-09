.class public interface abstract Lcom/oneplus/support/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestPermissionsResultCallback"
.end annotation


# virtual methods
.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .param p2    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method
