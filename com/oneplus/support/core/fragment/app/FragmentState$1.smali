.class Lcom/oneplus/support/core/fragment/app/FragmentState$1;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/support/core/fragment/app/FragmentState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/support/core/fragment/app/FragmentState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentState;

    invoke-direct {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/support/core/fragment/app/FragmentState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/support/core/fragment/app/FragmentState;
    .locals 1
    .param p1, "size"    # I

    .line 138
    new-array v0, p1, [Lcom/oneplus/support/core/fragment/app/FragmentState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentState$1;->newArray(I)[Lcom/oneplus/support/core/fragment/app/FragmentState;

    move-result-object p1

    return-object p1
.end method
