.class Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/os/ParcelableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParcelableCompatCreatorHoneycombMR2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    .local p1, "callbacks":Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;, "Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;

    .line 50
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    iget-object v0, p0, Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    iget-object v0, p0, Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;, "Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2<TT;>;"
    iget-object v0, p0, Lcom/oneplus/support/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;

    invoke-interface {v0, p1}, Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
