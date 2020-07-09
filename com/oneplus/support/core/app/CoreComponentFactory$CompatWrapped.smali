.class public interface abstract Lcom/oneplus/support/core/app/CoreComponentFactory$CompatWrapped;
.super Ljava/lang/Object;
.source "CoreComponentFactory.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/CoreComponentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompatWrapped"
.end annotation


# virtual methods
.method public abstract getWrapper()Ljava/lang/Object;
.end method
