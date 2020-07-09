.class public final Lcom/oneplus/support/core/os/ParcelableCompat;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    .local p0, "callbacks":Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;, "Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks<TT;>;"
    new-instance v0, Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;-><init>(Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
