.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;
.super Lcom/oneplus/support/core/view/AbsSavedState;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field behaviorStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3030
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState$1;-><init>()V

    .line 3031
    invoke-static {v0}, Lcom/oneplus/support/core/os/ParcelableCompat;->newCreator(Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3030
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 2992
    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/core/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2996
    .local v0, "size":I
    new-array v1, v0, [I

    .line 2997
    .local v1, "ids":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 2999
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 3001
    .local v2, "states":[Landroid/os/Parcelable;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3002
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3003
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3002
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3005
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 3008
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3009
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3013
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3015
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3016
    .local v0, "size":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3018
    new-array v1, v0, [I

    .line 3019
    .local v1, "ids":[I
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 3021
    .local v2, "states":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 3022
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 3023
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    aput-object v4, v2, v3

    .line 3021
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3025
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3026
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 3028
    return-void
.end method
