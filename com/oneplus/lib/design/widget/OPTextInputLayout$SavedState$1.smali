.class Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState$1;
.super Ljava/lang/Object;
.source "OPTextInputLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1004
    new-instance v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 999
    new-instance v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 996
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 996
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 1009
    new-array v0, p1, [Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 996
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState$1;->newArray(I)[Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
