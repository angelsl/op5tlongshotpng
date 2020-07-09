.class public Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
.super Lcom/oneplus/support/core/view/AbsSavedState;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
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
            "Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstVisibleChildAtMinimumHeight:Z

.field firstVisibleChildIndex:I

.field firstVisibleChildPercentageShown:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1346
    new-instance v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState$1;-><init>()V

    .line 1347
    invoke-static {v0}, Lcom/oneplus/support/core/os/ParcelableCompat;->newCreator(Lcom/oneplus/support/core/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1346
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1328
    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/core/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1330
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1331
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1332
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 1335
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1336
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1340
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1341
    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1343
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1344
    return-void
.end method
