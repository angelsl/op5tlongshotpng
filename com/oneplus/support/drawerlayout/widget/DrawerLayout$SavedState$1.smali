.class Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2134
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 2129
    new-instance v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2126
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2126
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 2139
    new-array v0, p1, [Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2126
    invoke-virtual {p0, p1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState$1;->newArray(I)[Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$SavedState;

    move-result-object p1

    return-object p1
.end method