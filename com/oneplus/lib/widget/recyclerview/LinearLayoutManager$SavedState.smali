.class Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2083
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2049
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2053
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2054
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2055
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;)V
    .locals 1
    .param p1, "other"    # Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;

    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2059
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2060
    iget-boolean v0, p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2061
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2073
    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .locals 1

    .line 2064
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method invalidateAnchor()V
    .locals 1

    .line 2068
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2069
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2078
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2079
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    return-void
.end method
